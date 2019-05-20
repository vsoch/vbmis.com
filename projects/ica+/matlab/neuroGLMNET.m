function [features_vectors, labels, inputfiles, fit] = neuroGLMNET(template,niftilist)

% Usage:
% template is a template .nii or .img file, binarized, which will be used
% to index voxels that should be used in the analysis
% nifti list is a tab delimited text file of images and labels to extract 
% data from, which already should be masked by the template and a grey matter mask.

% path/to/image.img [ TAB ] 1
% path/to/image.img [ TAB ] 0
% path/to/image.img [ TAB ] 1

% neuroGLM('template.img','niftifile.txt')

% Add path to nifti tools
 addpath(genpath('/home/vanessa/Documents/MATLAB/Nifti_tools/'))
 
% Go to where masked images are
cd /home/vanessa/Documents/Work/PSYCH204B_FP/DATA/NYUALL/networks/DMNmask

% Check to make sure we have 3D data
    if  isempty(regexp(template,'.nii.gz','end'))==0
        error('Please use 3D nifti (.img or .nii) data.  Exiting');
    else
        % Load in data using load_nii (part of Nifti for MATLAB package)
        temp = load_nii(template);
        
        % Convert to double precision
        temp.img = doublePrecision(temp);
       
        % Find all voxels from the template
        voxel_index = find(temp.img > 0);
        
        % Read in list of images from text file
        [inputfiles, label1, label2] = textread(niftilist,'%s\t%d\t%d\n');
        
        labels = [label1, label2];
        
        % Feature vectors will be array of subjects (rows) by voxels
        % (columns)
        features_vectors = zeros(length(inputfiles),length(voxel_index));
        
        % For each input file, query voxel indices, and save
        for i=1:length(inputfiles)
            % Read in input file data
            data = load_nii(inputfiles{i});
        
            % Convert to double precision
            data.img = doublePrecision(data);
            
            % Obtain all voxel (feature) values and save in array
            for j = 1:length(voxel_index)
                features_vectors(i,j) = data.img(voxel_index(j));
            end
        end
        
        % Perform glmnet with labels
        fit = glmnet(features_vectors,labels,'binomial');
        % Write new image to file, default output is .nii, so outside script
        % can convert to .nii.gz
        % save_nii(data,[ outfile '.nii' ]);
        return

    end

    function holder = doublePrecision(data)
        timepoints = size(data.img,4);
        xdim = size(data.img,1);
        ydim = size(data.img,2);
        zdim = size(data.img,3);
        
        holder = zeros(xdim,ydim,zdim,timepoints);

        for t = 1:timepoints
            for x = 1:xdim
                for y = 1:ydim
                    for z = 1:zdim
                        holder(x,y,z,t) = double(data.img(x,y,z,t));
                    end
                end
            end
        end
    end
end