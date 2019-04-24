function fslvox_tomni(vox,sform)

% This function reads in a 3 X n list of FSL voxel coordinates (with rows of
% i j k coordinates) and an sform matrix (4x4 as displayed in image header)
% and converts them to the standard space defined by the sform matrix

% vox: 3 x N matrix of FSL voxel coordinates
% sform: 4 x 4 sform matrix, for example:

% Field in Header    4 X 4 Matrix
% sto_xyz:1          [-4.000000  0.000000  0.000000  90.000000
% sto_xyz:2          0.000000  4.000000  0.000000  -126.000000
% sto_xyz:3          0.000000  0.000000  4.000000  -72.000000
% sto_xyz:4          0.000000  0.000000  0.000000  1.000000]

mni_coords = zeros(length(vox),3);

for i=1:length(vox)
   fslvox = [vox(i,1,1) vox(i,2,1) vox(i,3,1)];
   x = (fslvox(1)*sform(1,1)) + sform(1,4);
   y = (fslvox(2)*sform(2,2)) + sform(2,4);
   z = (fslvox(3)*sform(3,3)) + sform(3,4);
   mni_coords(i,1,1) = x;
   mni_coords(i,2,1) = y;
   mni_coords(i,3,1) = z;
end

% Will print the list to the screen
mni_coords

end
   