#!/usr/bin/env python2

"""
 pyVBM: Python Script for Voxel Based Morphometry
 
 This python script performs voxel based morphometry on raw anatomatical data with fsl.  It checks for all 
 inputs, creates a template script and submits it for each subject in a cluster environment, and creates
 and submits a second level processing script that waits for all single subject processing to complete.
 Since work is required to create a group template image and then register individual maps to this image,
 this second level processing script in turn creates and submits its own batch of scripts to the cluster.

Usage: python pyVBM.py -o /future/output/folder --input=input.txt --mat=/path/design.mat --con=/path/design.con
 
Options:
  -h, --help             show this help  
  -o, --output           vbm output folder, not yet created
  --input                two column file with subject ID,raw anatomical file path
  --con                  design.con for randomise
  --mat                  design.mat file for randomise (make with FSL GLM)

"""
import os
import time
import sys
import getopt
import stat
import subprocess
import shutil

# ------------------------------------------------------------------------------------
class pyVBM(Exception): pass
   
def usage():
    print __doc__

# pyVBM
# Checks that variable has been defined, exits if has not
def varcheck(vartocheck):
    for varname, desname in vartocheck.items():
        if not varname:
            print "Missing variable " + desname + ".  Please specify and re-run!" 
            sys.exit()

# CHECK DATA
# Checks for existence of anatomical files set by user
def checkData(inputfile):
    data = []
    subids = []
    fopen = open(inputfile,'r')
    for line in fopen:
        line = line.rstrip("\n").rstrip()
        if line:
            subid,subpath = line.split(',')
            if os.path.isfile(subpath):
                # Data will hold paths, and subids the ids
                data.append(subpath)
                subids.append(subid.rstrip())
            else: 
                print "Cannot find " + subpath + ". Exiting."
                sys.exit()

    print "Found all input anatomical files..."
    fopen.close
    return data,subids
	    
# SETUP OUT
# Check and setup output directory
def setupout(outdir,mat,con):
    # Make sure we don't end in slash
    if outdir[-1] == "/":
        outdir = outdir[:-1]
    # Check if outdirectory already exists
    if os.path.exists(outdir):
        print "Directory " + outdir + " already exists!"
        print "Script does not want to risk copying over old data, exiting."
        sys.exit()
    else:
        print "Creating output directories..."
        os.makedirs(outdir + "/bet")
        os.makedirs(outdir + "/struc")
        os.makedirs(outdir + "/log")
        os.makedirs(outdir + "/tmp")
        os.makedirs(outdir + "/stats")
    if os.path.exists(mat):
        print "Found " + mat + ", copying to output folder..."
        shutil.copy(mat,outdir + "/tmp/design.mat")
    else:
        print "Cannot find " + mat + ". Exiting."
        sys.exit()
    if os.path.exists(con):
        print "Found " + con + ", copying to output folder..."
        shutil.copy(con,outdir + "/tmp/design.con")
    else:
        print "Cannot find " + con + ". Exiting"
        sys.exit()
    return outdir

# VBM PRE TEMPLATE
# Create template to do preprocessing with bet
def preprocess(output,data,subids):

    print "Creating individual subject preprocessing template vbmpre.sh under " + output + "/tmp..."
    tempfile = open(output + "/tmp/vbmpre.sh",'w')
    tempfile.write("#!/bin/sh\n\n# PREPROCESS TEMPLATE\n\nOUTPUT=$1 # Path to output VBM directory with struc (without \"/\") \n" )
    tempfile.write("ANATDATA=$2 # Full path to anatomical data\nSUBID=$3 # Single subject ID\n\n")
    tempfile.write("## FILE CHECKING\n\n# make sure output directory was made by submission script.\nif [ ! -d \"$OUTPUT\" ]; then\n")
    tempfile.write("echo \"Cannot find \" $OUTPUT \". Exiting.\"\nfi\n\n# Check once more for anatomical data...\nif [ ! -f \"$ANATDATA\" ]; then\n")
    tempfile.write("echo \"Cannot find anatomical data file \" $ANATDATA \". Exiting.\"\nexit 32\nfi\n\n# Use fslmaths to copy the raw anatomical data into the outdir\n")
    tempfile.write("fslmaths $ANATDATA $OUTPUT/bet/${SUBID}_mprage\n\n## ANATOMICAL PREPROCESSING\ncd $OUTPUT/bet\n")
    tempfile.write("# Perform BET (brain extraction) on the raw anatomical data, -S indicates optical cleanup\necho \"Performing brain extraction with skull stripping and 0.225 threshold...\"")
    tempfile.write("\nbet $OUTPUT/bet/${SUBID}_mprage $OUTPUT/bet/${SUBID}_mprage_bet -S -f 0.225\n# Mask the new BET image (but do not reduce FOV) on the basis of the standard space image that is transformed into the BET space\n")
    tempfile.write("standard_space_roi $OUTPUT/bet/${SUBID}_mprage_bet $OUTPUT/bet/${SUBID}_cut -roiNONE -ssref ${FSLDIR}/data/standard/MNI152_T1_2mm_brain -altinput $OUTPUT/bet/${SUBID}_mprage_bet\n")
    tempfile.write("# Now perform bet again on the standard registered cut image to get the final output\nbet $OUTPUT/bet/${SUBID}_cut $OUTPUT/bet/${SUBID}_brain -f 0.225\n")
    tempfile.write("# Delete the intermediate files\nrm $OUTPUT/bet/${SUBID}_mprage.nii.gz\nrm $OUTPUT/bet/${SUBID}_mprage_bet.nii.gz\nrm $OUTPUT/bet/${SUBID}_cut.nii.gz\n")
    tempfile.write("\n## SEGMENTATION\n\necho \"Performing segmentation...\"\nfast -R 0.3 -H 0.1 $OUTPUT/bet/${SUBID}_brain\nimmv $OUTPUT/bet/${SUBID}_brain_pve_1 $OUTPUT/bet/${SUBID}_GM\n")
    tempfile.write("# Get gray matter tissue priors image\nGPRIORS=${FSLDIR}/data/standard/tissuepriors/avg152T1_gray\n")
    tempfile.write("# Registration parameter estimation of GM to grey matter standard template\nfsl_reg $OUTPUT/bet/${SUBID}_GM $GPRIORS $OUTPUT/bet/${SUBID}_GM_to_T -a\n")
    tempfile.write("# Copy completed file into group folder, ready for step 2\n# The vbmpro.sh script is waiting for all these images to appear\n")
    tempfile.write("cp $OUTPUT/bet/${SUBID}_GM_to_T.nii.gz $OUTPUT/struc/${SUBID}_GM_to_T.nii.gz\ncp $OUTPUT/bet/${SUBID}_GM.nii.gz $OUTPUT/struc/${SUBID}_GM.nii.gz\n")
    tempfile.write("# Delete intermediate files\nrm $OUTPUT/bet/${SUBID}_GM.nii.gz\nrm $OUTPUT/bet/${SUBID}_GM_to_T.mat\nrm $OUTPUT/bet/${SUBID}_GM_to_T.nii.gz\n")
    tempfile.write("rm $OUTPUT/bet/${SUBID}_mprage_bet_skull.nii.gz\nrm $OUTPUT/bet/${SUBID}_brain_seg.nii.gz\nrm $OUTPUT/bet/${SUBID}_brain_mixeltype.nii.gz\n")
    tempfile.write("rm $OUTPUT/bet/${SUBID}_mprage_bet_mask.nii.gz\nrm $OUTPUT/bet/${SUBID}_brain_pveseg.nii.gz\nrm $OUTPUT/bet/${SUBID}_brain_pve_0.nii.gz\n")
    tempfile.write("rm $OUTPUT/bet/${SUBID}_brain.nii.gz\nrm $OUTPUT/bet/${SUBID}_brain_pve_2.nii.gz\nrmdir $OUTPUT/bet\n")
    tempfile.close()
    os.chmod(output + "/tmp/vbmpre.sh",0755)

    # Submit the template for each subject
    print "Submitting template script to run for all subjects..."
    for j in range(0,len(subids)):
        subprocess.Popen(['bsub','-J',str(subids[j]) + '_pre','-o',output + '/log/' + str(subids[j]) + '_pre.out','-e',output + '/log/' + str(subids[j]) +'_pre.err',output + '/tmp/vbmpre.sh',output,data[j],str(subids[j])])
        time.sleep(2) 
        
# VBM PROCESSING TEMPLATE
# Create template to register each individual subject, create group template, and run randomise 
def process(output,subids):

    # First print template script to file
    print "Creating second level processing template vbmpro.sh under " + output + "/tmp..."
    tempfile = open(output + "/tmp/vbmpro.sh",'w')
    tempfile.write("#!/bin/sh\n\n# VBM_GROUP_TEMPLATE\n\nOUTPUT=$1 # VBM output directory\nsubids=( ")
    for sub in subids:
        tempfile.write(sub + " ")
    tempfile.write(")  # The entire list of subject IDs\n\n# Wait until we have all input files in the struc folder... THEN\n")
    tempfile.write("echo \"Waiting for preprocessing for all struc images to finish...\"\n")
    tempfile.write("fini=\"FALSE\"\nwhile [ $fini == \"FALSE\" ]; do\nfini=\"TRUE\"\nfor (( i = 0; i < ${#subids[*]}; i++ )); do\n")
    tempfile.write("if [ ! -f $OUTPUT/struc/${subids[i]}_GM_to_T.nii.gz ] || [ ! -f $OUTPUT/struc/${subids[i]}_GM.nii.gz ]; then\nfini=\"FALSE\"\nfi\ndone\ndone\n\n")
    tempfile.write("echo \"All preprocessing is complete.\"\ncd $OUTPUT/struc\n\n# Print a slices directory with all input images for visual checking\nslicesdir `ls *_GM_to_T.nii.gz`\n\n")
    tempfile.write("# Creation of gray matter template\n\necho \"Creating group gray matter template with affine registration...\"\nfslmerge -t template_4D_GM `ls *_GM_to_T.nii.gz`\n")
    tempfile.write("fslmaths template_4D_GM -Tmean template_GM\nfslswapdim template_GM -x y z template_GM_flipped\nfslmaths template_GM -add template_GM_flipped -div 2 template_GM_init\n\n")
    tempfile.write("# Estimation of the registration parameters of GM to grey matter standard template\necho \"Running registration to first-pass template...\"\n")
    tempfile.write("for (( i = 0; i < ${#subids[*]}; i++ )); do\nfsl_reg ${subids[i]}_GM template_GM_init ${subids[i]}_GM_to_T_init -a -fnirt --config=GM_2_MNI152GM_2mm.cnf\ndone\n\n")
    tempfile.write("# Creation of second pass template\necho \"Creating second-pass template...\"\nfslmerge -t template_4D_GM `ls *_GM_to_T_init.nii.gz`\n")
    tempfile.write("fslmaths template_4D_GM -Tmean template_GM\nfslswapdim template_GM -x y z template_GM_flipped\nfslmaths template_GM -add template_GM_flipped -div 2 template_GM_final\n")
    tempfile.write("echo \"Study-specific template will be created, when complete, check results with:\"\necho \"fslview struc/template_4D_GM_final\"\n")
    tempfile.write("echo \"and turn on the movie loop to check all subjects, then run:\"\necho \"fslview ${FSLDIR}/data/standard/tissuepriors/avg152T1_gray  struc/template_GM\"\n")
    tempfile.write("echo \"to check general alignment of mean GM template vs. original standard space template.\"\n\n")
    tempfile.write("# When we have the final template, submit each individual subject for second level processing\necho \"Preparing second level processing individual subject scripts...\"\n")
    tempfile.write("cat <<tempfile > $OUTPUT/tmp/vbmpross.sh\n#!/bin/sh\nSUBID=\$1\nOUTPUT=\$2\nfsl_reg \$OUTPUT/struc/\${SUBID}_GM \$OUTPUT/struc/template_GM_final \$OUTPUT/struc/\${SUBID}_GM_to_template_GM -fnirt \"--config=GM_2_MNI152GM_2mm.cnf --jout=\$OUTPUT/struc/\${SUBID}_JAC_nl\"\n")
    tempfile.write("fslmaths \$OUTPUT/struc/\${SUBID}_GM_to_template_GM -mul \$OUTPUT/struc/\${SUBID}_JAC_nl \$OUTPUT/struc/\${SUBID}_GM_to_template_GM_mod -odt float\ntempfile\n")
    tempfile.write("chmod a+x $OUTPUT/tmp/vbmpross.sh\nfor SUBID in ${subids[*]}; do\nbsub -J ${SUBID}_proc -o $OUTPUT/log/${SUBID}_proc.out -e $OUTPUT/log/${SUBID}_proc.err $OUTPUT/tmp/vbmpross.sh $SUBID $OUTPUT\n")
    tempfile.write("echo \"Submitting registration script for subject \" ${SUBID} \"...\"\nsleep 1\ndone\n\n# Wait until we have all _GM_to_template_GM_mod files in the struc folder...\"\n")
    tempfile.write("echo \"Waiting for registrations to finish...\"\n\nfini=\"FALSE\";\nwhile [ $fini != \"TRUE\" ]; do\nfini=\"TRUE\"\nfor (( i = 0; i < ${#subids[*]}; i++ )); do\n")
    tempfile.write("if [ ! -f $OUTPUT/struc/${subids[i]}_GM_to_template_GM_mod.nii.gz ]; then\nfini=\"FALSE\"\nfi\ndone\ndone\n\n")
    tempfile.write("# Then give an additional few minutes, just in case\nsleep 300\n\n# Copy the final template to the stats folder\n")
    tempfile.write("imcp $OUTPUT/struc/template_GM_final $OUTPUT/stats/template_GM_final\n\ncd $OUTPUT/stats\n\n# Merge all the GM_to_template_GM individual subject files, and the modified files\n")
    tempfile.write("fslmerge -t GM_merg `imglob ../struc/*_GM_to_template_GM.nii.gz`\nfslmerge -t GM_mod_merg `imglob ../struc/*_GM_to_template_GM_mod.nii.gz`\n")
    tempfile.write("# Threshold the image at 0.01 and use GM_mask as a binary mask\nfslmaths GM_merg -Tmean -thr 0.01 -bin GM_mask -odt char\n# Copy all design files (where are these from?)\n")
    tempfile.write("for i in GM_mod_merg ; do\nfor j in 2 3 4 ; do\nfslmaths $i -s $j ${i}_s${j}\nrandomise -i ${i}_s${j} -o ${i}_s${j} -m GM_mask -d $OUTPUT/tmp/design.mat -t $OUTPUT/tmp/design.con -V\ndone\ndone\n")
    tempfile.write("for i in GM_mod_merg ; do\nfor j in 2 3 4 ; do\nrandomise -i ${i}_s${j} -o zstat_${i}_s${j} -m GM_mask -d $OUTPUT/tmp/design.mat -t $OUTPUT/tmp/design.con -n 5000 -T -V\ndone\ndone\n")
    tempfile.close()
    os.chmod(output + "/tmp/vbmpro.sh",0755)

    # Submit template script
    print "Submitting template script for second level processing..."
    print "It will wait to begin until all first level processing is complete!"
    subprocess.Popen(['bsub','-J','vbmpro','-o',output + "/log/vbmpro.out",'-e',output + "/log/vbmpro.err","-R","rusage[mem=8192]","-W","72:30",output + "/tmp/vbmpro.sh ",output])
    time.sleep(2) 
    

def main(argv):
    try:
        opts, args = getopt.getopt(argv, "ho:i:", ["help","output=","input=","mat=","con="])

    except getopt.GetoptError:
        usage()
        sys.exit(2)
    
    # First cycle through the arguments to collect user variables
    anats = []
    outdir = None
    
    for opt, arg in opts:
        if opt in ("-h", "--help"):
            usage()
            sys.exit()    
        if opt in ("--input"):
            anats = arg            
        if opt in ("-o", "--output"):
            outdir = arg
        if opt in ("--mat"):
            mat = arg
        if opt in ("--con"):
            con = arg
	
    varcheck({anats:"input subject IDs and anatomical paths (--input=input.txt)",outdir:"vbm output directory (-o)",con:"contrast file (--con=design.con)",mat:"design matrix (--mat=design.mat"})
   
    outdir = setupout(outdir,mat,con)        # setup output directory
    data,subids = checkData(anats)   # make sure all raw anatomical data exists
                                     # returned is a list of subject IDs and full anat paths
    preprocess(outdir,data,subids)   # create preprocess template and submit for each subject
    process(outdir,subids)           # complete all registrations, group template, and run randomise

    print "All VBM analysis scripts have been submit."
    print "/log:   Output logs."
    print "/bet:   Intermediate preprocessing files - will be deleted"
    print "/tmp:   Scripts and temporary files"
    print "/stats: Statistical maps and results"
    sys.exit()

if __name__ == "__main__":
    main(sys.argv[1:])
