function fit = runGLMnet(timeseries,outcome,delimiter)

% This function reads in a text file with rows of subject timeseries for
% running through the glmNET algorithm.  

% USAGE -------------------------------------------------------------------
% timeseries: (myinput.txt) --- a text file with raw timeseries data - this
% is your training data. Each row should correspond to one subject.  
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
% runGLMnet('my_ts.txt',[0; 1; 0; 1],'%w')
% (outcome done in a column so you can copy paste from excel!)

% TRAINING DATA EXAMPLE (my_ts.txt) - 4 subjects, two clusters, N Timepts.
% C1_TP1 C!_TP2 C1_TP3 ... C2_TPN C2_TP1 C2_TP2 C2_TP3 ... C2_TPN
% C1_TP1 C!_TP2 C1_TP3 ... C2_TPN C2_TP1 C2_TP2 C2_TP3 ... C2_TPN
% C1_TP1 C!_TP2 C1_TP3 ... C2_TPN C2_TP1 C2_TP2 C2_TP3 ... C2_TPN
% C1_TP1 C!_TP2 C1_TP3 ... C2_TPN C2_TP1 C2_TP2 C2_TP3 ... C2_TPN

% Read in data file
ts = dlmread(timeseries,delimiter,1);

if size(ts,1) ~= size(outcome,1)
    error('Timeseries has ',num2str(size(ts,1)),' rows (subjects) and outcome matrix has ',num2str(size(outcome,1)),' rows (subjects).  These should be equal... exiting!'); 
end

fit = glmnet(ts,outcome);

end
