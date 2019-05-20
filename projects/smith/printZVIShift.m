function printZVIShift(data,outname)
% printZVIShift takes a data object created by acfGraphs and
% runacf and prepares a comma separated file organized as follows:
% HEADER: filename,1,2,3,4,5,6...k
% DATA:   filename1,n1,n2,n3,n4...nk

% Extract value of k from the data
k = length(data.data{1});

% Print acf values to file, based on values of K, to sort distribution
filey = fopen([ 'k-' num2str(k) '-vals_' outname '.txt'],'w');
% First print the first row, the labels
fprintf(filey,'%s','filename,');
    % Print each value of k, assuming equal for all images
    for k=1:length(data.data{1})
        fprintf(filey,'%s%s',num2str(k),',');
    end
    fprintf(filey,'\n');

% Now print the data for each image
% data.name{i} is the image file name
% data.data{i} is the index for an image, and r7.data{i}(j) is the value of k
for i=1:length(data.data)
    % Print the filename
    fprintf(filey,'%s%s',data.name{i},',');
    % Print each value of k extracted
    for j=1:length(data.data{i})
        fprintf(filey,'%s%s',num2str(data.data{i}(j)),',');
    end
    fprintf(filey,'\n');
end

fclose(filey);
end