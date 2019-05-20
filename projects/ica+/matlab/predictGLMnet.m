function [fitmatrix compiled listincluded] = predictGLMnet(model,delimiter,lambda)

% This script takes in a model variable (created by batchGLMnet), and
% runs a new data set through each model at a specified lambda, producing
% an output matrix with the columns of predictions for subjects for each 
% model.  Each row represents one subject / input data set, and each column
% represents a model.

% input: (myinput.txt) --- a text file with raw timeseries data - this
% is your data to predict outcomes for. Each row should = one subject.  
%
% delimiter is the separator you use in your text file.  Examples are %w
% for a white space, /t for a tab, ',' for a comma, or any combination of
% those things!

% In future - want to be able to specify outfile name for .csv or printing
% of an image! Could do varying color based on location between 0 and 1,
% and compare to actual values for each model to determine which is best!
included = [];

for i=1:length(model)

    % Read in new data - at this point each model will be tested with data
    % it was trained on!
    data = dlmread([ num2str(i) '_ts.txt' ],delimiter);

    fprintf('%s%s\n','Doing prediction for ',num2str(i));
    try
        prediction{i} = glmnetPredict(model(i).model,'response',data,lambda);
        included = [ included i ];
    catch ErrorName
        fprintf('%s%s%s\n','Error with model ',num2str(i),'. Will not be included!');
    end
end

% Put all of predictions into one matrix and give user the labels
allpredictions = [ prediction{1:end} ];

% Save individual predictions to variable to return to user
fitmatrix = prediction;
compiled = allpredictions;
listincluded = included;

end