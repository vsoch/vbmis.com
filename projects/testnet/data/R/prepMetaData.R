# This script is going to create a file with meta data for different orderings of a
# my connectome clustering, including:
#
# final_groups: nodes grouped by network, regardless of left or right
# opposite_groups: nodes grouped so left-regionX is opposite in the circle to right-regionX
# lateral_groups: nodes grouped around circle so left-regionX is lateral to right-regionX
#
# INPUT
# meta: should be a tab separated file of meta data with the following column labels:
#   - hemis: specifying "L" or "R" for right or left hemisphere
#   - network: should be the network names
# output: the name of the desired output file, will also be tab separated
# color: the name of the file that will specify the coloring of the network (based on network variable)
#        this is just space separated
# USAGE
#                        meta            output             color
# RSCRIPT prepMetaData.R parcel_data.txt metadata_final.tsv colorfile.txt
#
#
# vsochat[at]stanford
# for myconnectome, Poldracklab

args = commandArgs(TRUE)
input_file = args[1]
output_file = args[2]
coloring_file = args[3]

# Get cluster groupings
data = read.csv(input_file,head=TRUE,sep="\t")
groups = as.numeric(data$network)
hemispheres = data$hemis

# These are the cluster groups - the coloring for the network.  Equivalent network will have same
# color on both right and left.
write.table(t(groups),file=coloring_file,row.names=FALSE,col.names=FALSE,quote=FALSE,sep=" ")

# Here we have custom color scheme, from https://dl.dropboxusercontent.com/u/2441264/MyConnectome_NudgeIt.pdf page 14
color_labels = c("Default","Second-Dorsal-Attention","Ventral-Attention-Language","Second-Visual","Frontal-Parietal","Somatomotor","none","Parietal-Episodic-Retrieval","Parieto-Occipital","Cingulo-opercular","Salience","Frontal-Parietal-Other","First-Dorsal-Attention","First-Visual-V1+","subcortical")
colors = c("#ff2700","#d6add6","#007d7d","#393FAC","#FFFB00","#00ffff","94CD54","#CC0066","#003eff","#fbfbda","#822082","#000000","#c46b8b","#00f700","#94cd54","#CC0066")
# missing from the pdf are colors for "subcortical" and "none" - we will make subcortical a professional pink/purple.
# default: ff2700
# visual 2: 393fac
# fronto parietal fffb00
# v1 94cd54
# dorsal attention 1 00f700
# dorsal attention 2 d6add6
# ventral attention 007d7d
# salience 000000
# cingulo opucular 822082
# somato motor 00ffff
# frontal parietal 2 c46b8b
# parietal episodic retrieval 003eff
# parieto occipital fbfbda

names(colors) = color_labels

# Add colors to network
color_vector = c()
for (m in 1:nrow(data)){
  color_vector = c(color_vector,colors[data$network[[m]]])    
}
data = cbind(data,color=color_vector)

# CREATE final_groups -------------------------------------------------------------------------------
# Let's iterate through the unique groups, and save a vector that counts from 1 to N
unique_groups = sort(unique(groups))
final_order = array(dim=length(groups))
count = 1
for (u in unique_groups){
  member_idx = which(groups==u)
  for (m in member_idx){
    final_order[m] = count
    count = count + 1
  }
}
data$final_groups = final_order

# Now we want to do the same, but we will get the ordering for left, the ordering for right, and then
# stick them together in opposite directions, or laterally
lefties = array(dim=length(groups)/2)
righties = array(dim=length(groups)/2)
count_left = 1
count_right = 1
for (u in unique_groups){
  member_idx_left = intersect(which(groups==u),which(hemispheres=="L"))
  member_idx_right = intersect(which(groups==u),which(hemispheres=="R"))
  for (m in member_idx_left){
    lefties[m] = count_left
    count_left = count_left + 1
  }
  for (m in member_idx_right){
    righties[m] = count_right
    count_right = count_right + 1
  }
}

# CREATE opposite_groups -------------------------------------------------------------------------------
# Here we will make a string to produce a circle with L/R regions on opposite sides
opposite_order = righties
# Now we need to reverse one (lefties), and put it into the other
# First we will grab the values and add max(righties) to the index, so we start counting one more than the highest value
last_count = max(righties[!is.na(righties)])
left = lefties[which(!is.na(lefties))]
left_filler = left + last_count
opposite_order[is.na(opposite_order)] = left_filler
data$lateral_groups = lateral_order

# CREATE lateral_groups -------------------------------------------------------------------------------
# Here we will make a string to produce a circle with L/R regions on lateral sides
# Here is a remainder function
'%p%' <- function(x, y){x^2 + y}
lateral_order = righties
# Now we need to reverse one (lefties), and put it into the other
# First we will grab the values and add max(righties) to the index, so we start counting one more than the highest value
last_count = max(righties[!is.na(righties)])
left = lefties[which(!is.na(lefties))]
# Now we will iterate through values, and switch
# Calculate median of left values
median_value = median(seq(1,length(left)))
# Here we will put our new left values (switched)
left_new = array(dim=length(left))

# If length(left) is odd, we start one to left and right of median
if (length(left)%%2 == 1){
  nback = median_value - 1 
  nforward = median_value + 1
  # The median gets special treatment, because he doesn't have a match
  idx1 = which(left==median_value)
  left_new[idx1] = median_value
  iters = (length(left)-1)/2
} else {
  # If length(left) is even, we start at the halfway point
  nback = length(left)/2 
  nforward = (length(left)/2) + 1
  iters = (length(left))/2
}
# Now we are going to switch the values!
for (iter in 1:iters+1){
    idx1 = which(left==nback)
    idx2 = which(left==nforward)  
    left_new[idx2] = nback
    left_new[idx1] = nforward
    nback = nback-1
    nforward = nforward+1
}

# Find the middle index (if length(left) is even, you will n
left_filler = left_new + last_count
lateral_order[is.na(lateral_order)] = left_filler
data$lateral_groups = lateral_order
write.table(data,file=output_file,quote=FALSE,sep="\t",row.names=FALSE,col.names=TRUE)