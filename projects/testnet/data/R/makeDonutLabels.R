# This script will create the donut labels for the d3 myconnectome plot

# Here is the color

# Read in the meta data file created with prepMetaData.R
setwd("C:\\Users\\Vanessa\\Documents\\Websites\\testnet\\data\\dataset1")
meta = read.csv("metadata_newcolors.tsv",sep="\t",head=TRUE)

# First sort the data by the lateral order
sorted = meta[order(meta$lateral_groups),]

# Create labels that have network side (L/R) and name
networks = paste(sorted$hemis,sorted$network,sep="-")
unique_labels = unique(networks)
# Now get counts for them
counts = array(dim=length(unique_labels))
names(counts) = unique_labels
for (u in unique_labels){
  counts[[u]] = length(which(networks==u))
}

# See prepMetaData for where these colors come from
color_labels = c("Default","Second-Dorsal-Attention","Ventral-Attention-Language","Second-Visual","Frontal-Parietal","Somatomotor","none","Parietal-Episodic-Retrieval","Parieto-Occipital","Cingulo-opercular","Salience","Frontal-Parietal-Other","First-Dorsal-Attention","First-Visual-V1+","subcortical")
colors = c("#ff2700","#d6add6","#007d7d","#393FAC","#FFFB00","#00ffff","94CD54","#CC0066","#003eff","#fbfbda","#822082","#000000","#c46b8b","#00f700","#94cd54","#CC0066")
names(colors) = color_labels

# Now we get counts for the number of each label type (the size of the circle)
names(counts) = gsub("L-","Left ",names(counts))
names(counts) = gsub("R-","Right ",names(counts))

# The color labels also need to be interspaced with "white" for the spacers
color_labels = c()
for (c in names(counts)){
  color_labels = c(color_labels,colors[[gsub("Left |Right ","",c)]],"#ffffff")  
}

# We now need to add white space between the labels - meaning we will subtract 1 from the count of each, and add an empty spot
counts_spaced = c()
# Here is a spacer, size 1, color will be white
spacer = 1
names(spacer) ="-"
for (c in 1:length(counts)){
  # Add the label and name
  counts_spaced = c(counts_spaced,counts[c],spacer)
}

# Finally - we need to make the node coloring

output_table = as.data.frame(cbind(label=names(counts_spaced),counts=counts_spaced,colors=color_labels))
write.table(output_table,file="braindonutlabelsspacer.csv",sep=",",row.names=FALSE,col.names=TRUE,quote=FALSE)
