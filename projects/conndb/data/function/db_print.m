function db_print(DBvar,poption,outname)

% This function prints a database variable to the screen for editing in a
% .m file The user must input the variable to print as the input
% The script uses the gencode function from spm to read the variable
%--------------------------------------------------------------------------
% INPUT VARIABLES
% DBvar   ---  name of workspace variable to print
% poption ---  print to 'screen' or 'file'
% outname ---  name of output text file

% Get the name of the variable to print
DBprint = gencode(DBvar,outname);

% if user wants to print to screen
if strcmp(poption,'screen')
    for i=1:length(DBprint)
        fprintf('%s\n',DBprint{i})
    end
    
% if user wants to print to file
elseif strcmp(poption,'file')
        fid = fopen([ outname '.m' ],'w');
        for i=1:length(DBprint)
            fprintf(fid,'%s\n',DBprint{i});
        end 
        fclose(fid);
end
end
