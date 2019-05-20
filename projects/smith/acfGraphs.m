% first cd to directory with zvi images
cd /home/vanessa/Desktop/zvis
listing = dir(pwd);
k = 16;

% Put hold on so all functions are plotted on the same graph
hold on

% Extract acf values from each image
for i=5:length(listing)-1
    % Keep a cell for each value of k (acfuncs(i))
    % Keep an array of k values for each position (acfunccs(i).acf(k)
    % Run autocorrection for each k = 1:16 (shift) every pixel
    % each cell of acfuncs will have the timeseries at shift k
    % k corresponds to the index of acfuncs and the shift
    acfuncs.data{i-3} = runacf(listing(i).name,k,1,'y');
    acfuncs.name = listing(i).name;
    % If making individual plots to print to file
    % print -f1 -append zvis.ps
end

% This will create a variable with subfields:
% acfuncs.data{i} is the data for one image
% acfuncs.data{i}(k) would be a value of k for one image
% acfuncs.name{i} is the corresponding file name