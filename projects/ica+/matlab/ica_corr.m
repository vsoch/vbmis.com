function ica_corr(timeseries,delimiter,timepoints,lookup,output,pval)

% This function reads in a text file with rows of subject timeseries and
% calculates a correlation matrix for each subject.  It prints results to
% file for further use.

% INPUT -------------------------------------------------------------------
% timeseries: (myinput.txt) --- a text file with raw timeseries data -
% there should be (number of coordinates) X (timepoints) values per row,
% and each row corresponds to one subject.
%
% timepoints: the number of timepoints in the timeseries  
% 
% delimiter is the separator you use in your text file.  Examples are %w
% for a white space, /t for a tab, ',' for a comma, or any combination of
% those things!
%
% outfile: the name that you want for the output file, no extension
%
% lookup: a table with coordinates in columns that line up with the
% timeseries.  This is used to print headers for the various correlations.
% The format is based on the output of the --olmax command within fslmeants
% (part of the FSL package).  These lomax#.txt files are produced
% automatically by the melodic_ts.sh script, but you can also make them
% manually in the following format:
% 
% Cluster Index	Z	x	y	z	
% 1	0.649	21	19	31
% 1	0.625	25	17	31
% 1	0.617	12	13	25
% 1	0.578	10	16	22
% 1	0.558	10	12	21
% 1	0.481	7	16	18
%
% pval: should be 'yes' or 'no' - indicates if you want the pvalue for each
% correlation also printed to file.
%
% USAGE -------------------------------------------------------------------
% ica_corr('my_ts.txt','%w',176,olmax1.txt,output,'yes')


% TRAINING DATA EXAMPLE (my_ts.txt) - 4 subjects, two clusters, N Timepts.
% C1_TP1 C!_TP2 C1_TP3 ... C2_TPN C2_TP1 C2_TP2 C2_TP3 ... C2_TPN
% C1_TP1 C!_TP2 C1_TP3 ... C2_TPN C2_TP1 C2_TP2 C2_TP3 ... C2_TPN
% C1_TP1 C!_TP2 C1_TP3 ... C2_TPN C2_TP1 C2_TP2 C2_TP3 ... C2_TPN
% C1_TP1 C!_TP2 C1_TP3 ... C2_TPN C2_TP1 C2_TP2 C2_TP3 ... C2_TPN

% Read in data file
ts = dlmread(timeseries,delimiter);

% Read in the lookup table
lkup = fopen(lookup,'r');
C = textscan(lkup,'%s %s %s %s %s %s');
xvals = C{3}(2:end);
yvals = C{4}(2:end);
zvals = C{5}(2:end);
fclose(lkup);

if (length(xvals) ~= length(yvals)) || (length(xvals) ~= length(zvals)) || (length(yvals) ~= length(zvals))
    error([ 'Problem with input file.  Found x,y,z value numbers: ' num2str(length(xvals)) ' ' num2str(length(yvals)) ' ' num2str(length(zvals)) ]);
end

% Prepare the output file
outfile = fopen([ output '_corr.txt' ],'w');

% LIST OF CORRELATIONS
% m1m2 m1m3 m1m4 m1m5 m2m3 m2m4 m2m5 m3m4 m3m5 m4m5

% First save each coordinate into a list, for easy access. The index
% corresponds to the coordinate number, which is the order in the input
% text file.
for k=1:length(xvals)
    coords{k} = [ num2str(xvals{k}) '_' num2str(yvals{k}) '_' num2str(zvals{k}) ];
end

% Now print a header that describes the correlations
for i=1:length(coords)
    for j=i+1:length(coords)
        if strcmp(pval,'yes')
            fprintf(outfile,'%s%s%s%s',coords{i},'_to_',coords{j},' ','p_val ');
        else
            fprintf(outfile,'%s%s%s%s',coords{i},'_to_',coords{j},' ');
        end  
    end
end
fprintf(outfile,'\n');

   
% For each subject, prepare the input matrix to calculate the correlation
for k=1:size(ts,1)
    subject = ts(k,:);
    num_vox = (length(subject) / timepoints);
    
    % Check to see if the number of timepoints makes sense
    if num_vox ~= length(xvals)
        error([ 'Only found ' num2str(num_vox) ' values in the timeseries.  Based on ' num2str(timepoints) ' timepoints and ' num2str(length(xvals)) ' coordinates, should be ' num2str(length(xvals) * timepoints) ]); 
    end
    
    row(:,1) = subject(1:timepoints);
    
    % Place each timeseries into it's own cell, transposed
    for i=2:num_vox
        starty = (timepoints*(i-1)) + 1;
        endy = starty + timepoints -1;
        row(:,i) = transpose(subject(starty:endy)); 
    end
    
    
    % Now calculate the correlation matrix    
    [ subcorr pval ] = corr(row);
        
    % Print the correlations to file in the correct order
    for i=1:size(subcorr,2)
        for j=i+1:size(subcorr,2)
            if strcmp(pval,'yes')
                fprintf(outfile,'%s%s%s%s',num2str(subcorr(i,j)),' ',num2str(pval(i,j)),' ');
            else
                fprintf(outfile,'%s%s%s%s',num2str(subcorr(i,j)),' ');
            end
        end
    end
    fprintf(outfile,'\n');
end

fclose(outfile);
    
end

% To run for many, for example:
% for i=0:24
%    ica_corr([ num2str(i) '_ts.txt' ],'%w',176,[ 'lomax' num2str(i) '.txt' ],[ 'ts' num2str(i) ],'no')
% end
