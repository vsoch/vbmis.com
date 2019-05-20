% Define correlation function for N observations of variable X shifted by
% k, the overlap (pixels) in both directions.
% everyXpixels: sample every X pixels
% Question - if we have 2D image in vector, can we just clip by k on
% both sides, as opposed to reconstructing in 2D?

function corval=runacf(imagefile,k,everyXpixels,usercolor)

% Read in original DAPI image
image = im2double(imread(imagefile));
% Put 2D image in one long vector
image = image(1:end);

% Calculate auto-correlation value for each shift of k
for n = 1:k
    if mod(k,everyXpixels)==0
        corval(n) = acf(image,n);
    end
end

plot(corval,usercolor)
title(['Autocorrelation every ' num2str(everyXpixels) ' pixels'])

% Auto Correlation Function
function acf = acf(image,k)

% The set of autocorrelation coefficients arranged as a function of 
% separation in time is the sample autocorrelation function, or the acf.

% Create vectors with overlap removed
% X will remove k from the right
X = image(1:length(image)-k);

% Y will remove k from the left
Y = image(1+k:length(image));

% Calculate means of X and Y
xbar = mean(X);
ybar = mean(Y);
%fprintf('%s%s%s%s\n','MEANS: ',num2str(xbar),' ',num2str(ybar));

% Calculate the SD of X and Y
sdx = std(X);
sdy = std(Y);
%fprintf('%s%s%s%s\n','SDS: ',num2str(sdx),' ',num2str(sdy));

% Create a vector to hold the multiplication of (values-means) for each
% time point
sumXY = zeros(1,length(X));

% subtract the mean from each value in X and Y
for i=1:length(X)
    % Note - it doesn't work when I do matrix operations - freezes
    % X = X-mean(X(:));
    % Y = Y-mean(Y(:));
    % sumXY = X.*Y;
    X(i) = X(i) - xbar;
    Y(i) = Y(i) - ybar;
    sumXY(i) = X(i)*Y(i);
end

% Sum all the multiplied values to get the numerator of acf
numerator = mean(sumXY);
% fprintf('%s%s%s%s\n\n','NUMERATOR / DENOMINATOR: ',num2str(numerator),'/',num2str(sdx*sdy))

% Calculate the denominator, the multiplied standard deviations
denominator = sdx*sdy;
acf = numerator / denominator;

end
end