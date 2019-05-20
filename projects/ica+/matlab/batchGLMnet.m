function fit = batchGLMnet(ts_nums,outcome,delimiter)

% USAGE -------------------------------------------------------------------
% ts_nums: is a 1 X N matrix of numbers to extract based on text file
% names (so for ts_1.txt and ts_2.txt you would input [1 2]
%
% outcome: should be 1 X N matrix of the "outcome" variables, one for each
% subject.  Since glmNET only allows for binary data, this should be a
% single column matrix of 0's and 1's, and the number should correspond to
% the number of subjects.
%
% delimiter is the separator you use in your text file.  Examples are %w
% for a white space, /t for a tab, ',' for a comma, or any combination of
% those things!
%
% outpre: is the prefix for the variable that you want to save the models
% in.
%
% DEPENDENCIES ------------------------------------------------------------
% must have glmnet matlab scripts added to your path

for i=1:length(ts_nums)
   fit(i).infile = [ 'ts' num2str(i) '_corr.txt' ];
   fprintf('%s\n','Running model for input timeseries ',num2str(i));
   fit(i).model = runGLMnet([ 'ts' num2str(i) '_corr.txt' ],outcome,delimiter);
   fit(i).outcome = outcome;
end

fprintf('Results saved to specified variable');

end