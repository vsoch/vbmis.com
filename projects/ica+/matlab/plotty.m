% Script to play with manipulation of voxel features for SVM
function [xdat,xcdat] = plotty(command,input)

% PREPARING DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if strcmp(command,'prep')

% Add necessary paths
fprintf('%s\n','Adding necessary paths...');
addpath(genpath('/home/vanessa/Documents/Code/Python/Neuroglmnet'));
addpath(genpath('/home/vanessa/Documents/MATLAB/Nifti_tools/'));
addpath(genpath('/home/vanessa/Packages/libsvm-3.11/matlab/'));

% Go to data 
fprintf('%s\n','Loading data...');
cd /home/vanessa/Documents/Work/PSYCH204B_FP/DATA/NYUALL/networks/DMNmask/
data = load('plotty.mat');

fprintf('%s\n','Finished preparing data and paths.  Next, specify model.');

return

% First we will plot histograms for different transforms so we are able
% to compare control and ADHD.

% LOG TRANSFORM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LOG (subtract mean, take log)
elseif strcmp(command,'log')

data = zeros(size(input.features_vectors,1),length(input.features_vectors));
for i=1:size(input.features_vectors,1)
    for j=1:length(input.features_vectors)
        data(i,j) = log(abs(input.features_vectors(i,j) - input.m(i)));
    end
end

% Plot results and return data
plotsie(data)
return

% SQUARE ROOT TRANSFORM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif strcmp(command,'sqrt')
data = zeros(size(input.features_vectors,1),length(input.features_vectors));
for i=1:size(input.features_vectors,1)
    for j=1:length(input.features_vectors)
        data(i,j) = sqrt(abs(input.features_vectors(i,j) - input.m(i)));
    end
end

% Plot results and return data
plotsie(data)
return

% QUADRATIC TRANSFORM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif strcmp(command,'quad')
data = zeros(size(input.features_vectors,1),length(input.features_vectors));
for i=1:size(input.features_vectors,1)
    for j=1:length(input.features_vectors)
        data(i,j) = (input.features_vectors(i,j) - input.m(i)) .* (input.features_vectors(i,j) - input.m(i));
    end
end

% Plot results and return data
plotsie(data)
return

% EXPONENTIAL TRANSFORM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif strcmp(command,'exp')
data = zeros(size(input.features_vectors,1),length(input.features_vectors));
for i=1:size(input.features_vectors,1)
    for j=1:length(input.features_vectors)
        data(i,j) = exp(input.features_vectors(i,j) - input.m(i));
    end
end

% Plot results and return data
plotsie(data)
return

% ABS VALUE TRANSFORM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif strcmp(command,'abs')
data = zeros(size(input.features_vectors,1),length(input.features_vectors));
for i=1:size(input.features_vectors,1)
    for j=1:length(input.features_vectors)
        data(i,j) = abs(input.features_vectors(i,j) - input.m(i));
    end
end

% Plot results and return data
plotsie(data)
return

% SIGMOID TRANSFORM %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif strcmp(command,'sig')
data = zeros(size(input.features_vectors,1),length(input.features_vectors));
for i=1:size(input.features_vectors,1)
    for j=1:length(input.features_vectors)
        data(i,j) = smf(input.features_vectors(i,j) - input.m(i),[0 1]);
    end
end

% Plot results and return data
plotsie(data)
return

% Q CENTERED AROUND MEAN %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif strcmp(command,'qcenter')
data = zeros(size(input.features_vectors,1),length(input.features_vectors));
for i=1:size(input.features_vectors,1)
    for j=1:length(input.features_vectors)
        data(i,j) = smf(input.features_vectors(i,j) - input.m(i));
    end
end

% Plot results and return data
plotsie(data)
return

% CENTERED AROUND HIST BIN %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif strcmp(command,'bincenter')
data = zeros(size(input.features_vectors,1),length(input.features_vectors));
for i=1:size(input.features_vectors,1)
    for j=1:length(input.features_vectors)
        data(i,j) = smf(input.features_vectors(i,j) - input.m(i));
    end
end

% Plot results and return data
plotsie(data)
return
end






%2. First create a matlab script that plots the three histograms for data after you've
%taken a log, taken a square etc..

%3. Modify the function to make the differences more dramatic. Eg. Say data for one
%subject is x,

%So plain ole log might be
%x_new = log ( x - mean(x) );

%But maybe
%x_new = log( (x - mean(x)) .* (x - mean(x)) );
%5works better at separating the histograms..
%Etc.. 

%4. Run the svm when you histograms look really different.

%We can play around with the data when we meet up next.


% PLOT DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function plotsie(data) 
    x = data(input.adhd,:)*input.m';
    xdat = data(input.adhd,:);
    %Aligning the axes
    xmin = min(min(x));
    xmax = max(max(x));
    bins = [xmin : (xmax - xmin)/20 : xmax];
    
    %Draw Fig 1
    figure(1);
    subplot(2,2,1);
    hist(x, bins);
    title([ 'ADHD ' command ] );
    subplot(2,2,2);
    imagesc(data(input.adhd,:));
    colormap(hot);
    %plot(hmx);
    
    figure(1);
    subplot(2,2,3);
    xc = data(input.ctrl,:)*input.m';
    xcdat = data(input.ctrl,:);
    hist(xc, bins);
    title([ 'Control ' command ]);
    subplot(2,2,4);
    imagesc(data(input.ctrl,:));
    colormap(hot);
    
    pcPlotter(20,xdat,xcdat);
    
    return
end

% Given a number i, plot the ith rank approximation and all the first i
% principal components
function pcPlotter(max_pc,adhd,control)
    %Step 1 : Take svds of you data
    u = input.u;
    s = input.s;
    v = input.v;
    uc = input.uc;
    sc = input.sc;
    vc = input.vc;
    
    figure(3);
    subplot(2, max_pc+1, 1);
    sred = s; sred(max_pc+1:end,max_pc+1:end) = sred(max_pc+1:end,max_pc+1:end).*0; 
    adhd_nrank_approx = u * sred * v';
    imagesc(adhd_nrank_approx);
    colormap(hot);
    
    subplot(2, max_pc+1, max_pc+1+1);
    scred = sc; scred(max_pc+1:end,max_pc+1:end) = scred(max_pc+1:end,max_pc+1:end).*0; 
    ctrl_nrank_approx = uc * scred * vc';
    imagesc(ctrl_nrank_approx);
    colormap(hot);
        
    % Keep a variable for storing the mean of each component
    adhd_pc_means = zeros(max_pc,1);
    ctrl_pc_means = zeros(max_pc,1);
    adhd_pc = zeros(max_pc,5501);
    ctrl_pc = zeros(max_pc,5501);
    pc_means_diff = zeros(max_pc,1);
    
    tot_size = size(adhd,1) + size(control,1);
    for i = 1 : max_pc,
        corr_matrix{i}.cc = zeros(tot_size);
        for j=1:tot_size
            for k=j:tot_size
                
                % ADHD (i'th principal component)
                %figure(3);
                %subplot(2, max_pc+1, i+1);
                %imagesc(adhd_pc_i);
                %adhd_pc(i,:) = mean(adhd_pc_i);
                %colormap(hot);
                
                %figure(3);
                % CONTROL (i'th principal component)
                %subplot(2, max_pc+1, max_pc+1+i+1);
                %imagesc(control_pc_i);
                %ctrl_pc(i,:) = mean(control_pc_i);
                %colormap(hot);

                %subjects 1 to n(adhd) are the adhd
                %subjects n(adhd)+1 to n(adhd)+n(ctrl) are the control ones
                if k <= size(adhd,1) && j <= size(adhd,1)
                    % j and k are both adhd
                    sred = s .* 0; sred(i,i) = s(i,i); 
                    adhd_pc_i = u * sred * v'; 
                
                    pc_j = adhd_pc_i(j,:);
                    pc_k = adhd_pc_i(k,:);
                elseif k <= size(adhd,1) && j > size(adhd,1)
                    % k is adhd, j is control
                    sred = s .* 0; sred(i,i) = s(i,i); 
                    adhd_pc_i = u * sred * v'; 
                    scred = sc .* 0; scred(i,i) = sc(i,i); 
                    control_pc_i = uc * scred * vc'; 
                
                    pc_j = control_pc_i(j-size(adhd,1),:);
                    pc_k = adhd_pc_i(k,:);
                elseif k > size(adhd,1) && j > size(adhd,1)
                    % k is control, j is control
                    scred = sc .* 0; scred(i,i) = sc(i,i); 
                    control_pc_i = uc * scred * vc'; 
                
                    pc_j = control_pc_i(j-size(adhd,1),:);
                    pc_k = control_pc_i(k-size(adhd,1),:);
                elseif k > size(adhd,1) && j <= size(adhd,1)
                    % k is control,  j is adhd
                    sred = s .* 0; sred(i,i) = s(i,i); 
                    adhd_pc_i = u * sred * v'; 
                    scred = sc .* 0; scred(i,i) = sc(i,i); 
                    control_pc_i = uc * scred * vc'; 
                    
                    pc_j = adhd_pc_i(j,:);
                    pc_k = control_pc_i(k-size(adhd,1),:);
                end
                corr_matrix{i}.cc(j,k) = pc_j * pc_k';
            end 
        end
    figure(i+3);
    imagesc(corr_matrix{i}.cc);
    colormap(hot);
    end
end
end