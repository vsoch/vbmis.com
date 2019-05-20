function zviKHist(data,outname,blurryID,krange)
% Will print a chart of distribution for value of k for a ribbon
% blurryID is a list of indices for blurry images [1,40,50] or [40]
% k is the range of k value to print the distribution for [1,16]
% data is the raw data, with k values in columns, filenames in rows
% Note that row 1 is the header, so we start at 2

% Example use:
% zviKHist(r7,[43],[1,16])

% Create a histogram plot for each value of k
% Do FIGURE 1 (not normalized) and FIGURE 2 (normalized)
for k=krange(1):krange(2)

    % FIGURE 1: Create histogram of data
    figure(1); subplot(4,4,k); hist(data.data(2:length(data.data),k))

    % Add trendline for median
    line([median(data.data(2:length(data.data),k)),median(data.data(2:length(data.data),k))],[0,20]);

    % Calculate standard deviation and mean
    std1 = std(data.data(2:length(data.data),k));
    % We are going to use the median as marker of central tendency
    % So outliers do not effect it greatly!
    mean1 = median(data.data(2:length(data.data),k));
    hold on

    % For each blurry image, add another point / line...
    for i=1:length(blurryID)
        line([data.data(blurryID(i),k),data.data(blurryID(i),k)],[0,20],'color','red');
        % Calculate the z score for each blurry image
        Z(i) = (data.data(blurryID(i),k) - mean1) / std1;
    end
    ZALL(k) = mean(Z);
    clear Z
    
    % Add list of blurry z scores to the plot
    % str2{1} = 'Z-values:';
    % str2{2} = num2str(ZALL);
    % text(.8,12,str2);

    % Add a title and details...
    str1{1} = ' RED: blurry';
    str1{2} = 'BLUE: median';
    mTextBox = uicontrol('style','text','pos',[0 100 100 40]);
    set(mTextBox,'String',str1);
    
    title(['Distribution for ' outname  ' k=' num2str(k)])
    
    % FIGURE 2: Normalized Histograms
    
    % Go through values and subtract median, divide by standard deviation
    for g=2:length(data.data)
        holder(g) = (data.data(g,k) - mean1)/std1;
    end
     
    figure(2); subplot(4,4,k); hist(holder(2:length(holder)))

    % Add trendline for median (0)
    line([0,0],[0,20]);

    % For each blurry image, add another point / line...
    for i=1:length(blurryID)
        line([holder(blurryID(i)),holder(blurryID(i))],[0,20],'color','red');
        % Grab the z score for each blurry image
        Z(i) = holder(blurryID(i));
    end
    ZALL(k) = mean(Z);
    clear Z
    
    % Add list of blurry z scores to the plot
    % str2{1} = 'Z-values:';
    % str2{2} = num2str(ZALL);
    % text(.8,12,str2);

    % Add a title and details...
    str1{1} = ' RED: blurry';
    str1{2} = 'BLUE: median';
    mTextBox = uicontrol('style','text','pos',[0 100 100 40]);
    set(mTextBox,'String',str1);
    
    title(['Normalized distribution: ' outname ' k=' num2str(k)])


end

% Prepare ZALL string
ZALLPRINT{1} = 'Z VALUES:';
ZALLPRINT{2} = '';
for i=3:size(ZALL,2)+2
    ZALLPRINT{i} = horzcat(num2str(i-2),': ',num2str(ZALL(i-2))); 
end

% Print mean z values for blurry images on side of plot
mTextBox2 = uicontrol('style','text','pos',[0 300 100 300]);
set(mTextBox2,'String',ZALLPRINT);
    
end