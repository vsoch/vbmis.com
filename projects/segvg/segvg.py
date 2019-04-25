
import nibabel
import sys
import cv2
from scipy.spatial.distance import pdist
import numpy

#mr = sys.argv[1]

mr = "brain_parcellation_mcinet_basc_asym_33clusters.nii.gz"
nii = nibabel.load(mr)

# We will squash the image from the top, for each unique value
regions = numpy.unique(nii.get_data()).tolist()

# We don't want to contour value of 0 (nothingness)
regions.pop(regions.index(0))

# We will save a list of segments
# needs to look like var segments = [{points:[[14, 44], [14, 46],[15, 46],[14, 45],[15, 44],[16, 44],[17, 45],[16, 44]]}]
segments = []

for value in regions:
    empty = numpy.zeros(nii.shape)
    empty[nii.get_data()==value] = value
    squash = empty.sum(axis=0) # user can select view
    squash[squash!=0] = 1      # binarize
    # Can we convert numpy array to grayscale?
    im = numpy.array(squash * 255, dtype = numpy.uint8)  # Note - will need to save mapping 
    ret, thresh = cv2.threshold(im,0,255,cv2.THRESH_BINARY_INV+cv2.THRESH_OTSU)
    (cnts, _) = cv2.findContours(thresh.copy(), cv2.RETR_CCOMP,cv2.CHAIN_APPROX_SIMPLE)
    
    # Note: need way to separate right and left
    
    # loop over the contours
    print len(cnts) # should always be 1 or 2 - the first entry is the external contour
    new_segment = {"points":[x[0] for x in cnts[0].tolist()]}
    segments.append(new_segment)
