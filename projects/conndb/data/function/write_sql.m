function write_sql(var,keyname,outfile,categories)

% NOTES
% Need to make consistent format for GROUPS - either primary / secondary OR
% correspond to group IDs in population

% Need to add med_primary to FA data read and database! (for DB_14)
% Need to coordinate F and dof into FA in database

% INPUT PARSING
%--------------------------------------------------------------------------
% first check that categories are valid.  Can be a list of the following:
% log  publication  measure roi   fc   md   rd  fa   FDA  anova OR simply 'all' will write all included
% software scanner population

% VANESSA WRITE ME
% p = inputParser;            % Create an instance of the input parser
% p.StructExpand = true;      % Set it up to read a structural variable (categories)
% p.addOptional(outfile, '@char')
% p.addParamValue(categories, 'blue')
% p.parse(varargin{:});
% p.Results

% Now check that the inputs the user specifed exist in the input variable
%--------------------------------------------------------------------------
% VANESSA WRITE ME

% GLOBAL VARIABLES
% Set these up to hold the count of each results type for the log table
% VANESSA CREATE VARIABLES HERE

% Then set values in a hex and change each specified by the user to true.  
% This will allow us to easily check the status of each desired input in a 
% particular order.
k = {'publication','population','measure','roi','fa','md','rd','fda','fc','anova','software','scanner'};
v = {'false','false','false','false','false','false','false','false','false','false','false','false'};
categ = containers.Map(k,v);

if strcmp(categories,'all')==0                  % If the user has not specified all
    for i = 1: length(categories); v{categories{i}} = 'true'; end;
else    % Look through var and find categories
    if isfield(var,'Publication'); categ('publication') = 'true'; end
    if isfield(var,'Population'); categ('population') = 'true'; end
    if isfield(var,'Imaging')
        if ~isempty(var.Imaging{1})
            if isfield(var.Imaging{1},'scanner'); categ('scanner') = 'true'; end
            if isfield(var.Imaging{1}.results','fc'); categ('fc') = 'true'; end
            if isfield(var.Imaging{1}.results','FA'); categ('fa') = 'true'; end    
            if isfield(var.Imaging{1}.results','MD'); categ('md') = 'true'; end
            if isfield(var.Imaging{1}.results','RD'); categ('rd') = 'true'; end
            if isfield(var.Imaging{1}.results','FDA'); categ('fda') = 'true'; end
            if isfield(var.Imaging{1}.results','roi'); categ('roi') = 'true'; end
            if isfield(var.Imaging{1}.results','anova'); categ('anova') = 'true'; end
            if isfield(var.Imaging{1}.results','software'); categ('software') = 'true'; end
        end
    end
    if isfield(var,'Behavioral')
        if ~isempty(var.Behavioral)
            if isfield(var.Behavioral{1},'measure'); categ('measure') = 'true'; end
        end
    end
end

% Set up file for writing
fid = fopen([ outfile '_sql.txt' ],'w');

% Then call individual functions to write sql code

% WRITE SQL TO FILE
%--------------------------------------------------------------------------
if strcmp(categ('publication'),'true'); 
    fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.publication SET');
    % IN THE FUTURE CHANGE SO THAT DB NAME IS A VARIABLE
    print_line('author','var.Publication.author');
    print_line('journal','var.Publication.journal');
    print_line('title','var.Publication.title');
    print_line('volume','var.Publication.volume');
    print_line('year','var.Publication.year');
    print_line('page_start','var.Publication.page(1)');
    print_line('page_end','var.Publication.page(2)');
    print_line('country','var.Publication.country');
    print_line('keyword','var.Publication.keyword');
    print_line('paper_id','keyname','last');
end

% A population holds basic group information that is referenced by other
% objects based on knowing the paper_ID and group ID
if strcmp(categ('population'),'true'); 
    for groupkey = 1:length(var.Population.group)
        fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.group SET');
        % IN THE FUTURE CHANGE SO THAT DB NAME IS A VARIABLE
        print_line('paper_id','keyname');
        print_line('name','var.Population.group{groupkey}.id');
        print_line('age_min','var.Population.group{groupkey}.age.range(1)');
        print_line('age_max','var.Population.group{groupkey}.age.range(2)');
        print_line('age_mean','var.Population.group{groupkey}.age.stat(1)');
        print_line('age_SD','var.Population.group{groupkey}.age.stat(2)');
        
        % The n variable is formatted as [total males females]
        print_line('n','var.Population.group{groupkey}.n(1)');
            if length(var.Population.group{groupkey}.n) == 2
                print_line('male','var.Population.group{groupkey}.n(2)');
                print_line('female','0');
            elseif length('var.Population.group{groupkey}.n') == 3
                print_line('male','var.Population.group{groupkey}.n(2)');
                print_line('female','var.Population.group{groupkey}.n(3)');
            end
        print_line('med','var.Population.group{groupkey}.med');
        groupid = num2str(groupkey);
        print_line('group_id','groupid','last'); clear groupid;
      
        % statistics about age - added as a demographic under behavioral
        if isfield(var.Population,'comparison')
            fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.demographic SET');
            print_line('paper_id','keyname');
            groupids = num2str(var.Population.comparison{1}.ids);
            print_line('groups','groupids'); clear groupids;
            print_line('name','var.Population.comparison{1}.name');
            print_line('stat_t','var.Population.comparison{1}.stat.t');
            print_line('stat_z','var.Population.comparison{1}.stat.z');
            print_line('p_val','var.Population.comparison{1}.p');
            print_line('demographic_id','1','last');
        end        
    end
end

if strcmp(categ('software'),'true');
    fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.software SET');
    % IN THE FUTURE CHANGE SO THAT DB NAME IS A VARIABLE
    print_line('preprocess','var.Imaging{1}.results.software.preprocess');
    print_line('analysis','var.Imaging{1}.results.software.analysis');
    print_line('statistics','var.Imaging{1}.results.software.statistics');
    print_line('paper_id','keyname','last');
end

if strcmp(categ('scanner'),'true'); 
    fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.scanner SET');
    print_line('make','var.Imaging{1}.scanner.make');
    print_line('model','var.Imaging{1}.scanner.model');
    print_line('telsa','var.Imaging{1}.scanner.telsa');
    print_line('paper_id','keyname','last');
end

if strcmp(categ('measure'),'true'); 
    % Each reported subscale of a measure is treated as a unique measure
    % The final statistics comparing groups are stored here, and individual
    % group statistics are stored in measure_result objects
    for meskey = 1:length(var.Behavioral{1}.measure)
        for mesreskey = 1:length(var.Behavioral{1}.measure{meskey}.results)
            fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.measure SET');
            print_line('paper_id','keyname');
            print_line('name','var.Behavioral{1}.measure{meskey}.name');
            print_line('cogpo','var.Behavioral{1}.measure{meskey}.cogpo');
            print_line('version','var.Behavioral{1}.measure{meskey}.version');
            print_line('subscale','var.Behavioral{1}.measure{meskey}.results{mesreskey}.subscale');
            group_num = num2str(1:length(var.Behavioral{1}.measure{meskey}.results{mesreskey}.group));
            print_line('groups','group_num'); clear group_num;
            print_line('stat_t','var.Behavioral{1}.measure{meskey}.results{mesreskey}.comparison{1}.stat.t');
            print_line('stat_z','var.Behavioral{1}.measure{meskey}.results{mesreskey}.comparison{1}.stat.z');
            print_line('p_val','var.Behavioral{1}.measure{meskey}.results{mesreskey}.comparison{1}.p.val');
            print_line('p_comparison','var.Behavioral{1}.measure{meskey}.results{mesreskey}.comparison{1}.p.comparison');
            print_line('measure_id','meskey','last');
        end
        % Add each group measure result, linked to the measure by the meskey
        % Order of the groups under measures MUST correspond to population groups
        for mesreskey = 1:length(var.Behavioral{1}.measure{meskey}.results)
            for mesgroupkey = 1:length(var.Behavioral{1}.measure{meskey}.results{mesreskey}.group)
                fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.measure_result SET');
                print_line('paper_id','keyname');
                groupid = num2str(mesgroupkey);
                print_line('group_id','groupid'); clear groupid;
                if isfield(var.Behavioral{1}.measure{meskey}.results{mesreskey}.group{mesgroupkey},'med')
                    print_line('med','var.Behavioral{1}.measure{meskey}.results{mesreskey}.group{mesgroupkey}.med');
                end
                print_line('mean','var.Behavioral{1}.measure{meskey}.results{mesreskey}.group{mesgroupkey}.mean');
                print_line('SD','var.Behavioral{1}.measure{meskey}.results{mesreskey}.group{mesgroupkey}.SD');
                print_line('measure_id','meskey','last');
            end
        end
    end
end    

if strcmp(categ('roi'),'true'); 
    for roikey = 1:length(var.Imaging{1}.results.roi)
        fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.roi SET');
        print_line('paper_id','keyname');
        print_line('task','var.Imaging{1}.task');
        print_line('method','var.Imaging{1}.method');
        print_line('hemisphere','var.Imaging{1}.results.roi{roikey}.hemisphere');
        print_line('roi','var.Imaging{1}.results.roi{roikey}.name');
        print_line('atlas','var.Imaging{1}.results.roi{roikey}.atlas');
        group_primary = num2str(var.Imaging{1}.results.roi{roikey}.group.primary);
        print_line('group_primary','group_primary'); clear group_primary;
        print_line('group_comparison','var.Imaging{1}.results.roi{roikey}.group.comparison');
        group_secondary = num2str(var.Imaging{1}.results.roi{roikey}.group.secondary);
        print_line('group_secondary','group_secondary'); clear group_secondary;
        if isfield(var.Imaging{1}.results.roi{roikey}.group,'med')
            print_line('med_primary','var.Imaging{1}.results.roi{roikey}.group.med.primary');
            print_line('med_secondary','var.Imaging{1}.results.roi{roikey}.group.med.secondary');
        end        
        print_line('direction','var.Imaging{1}.results.roi{roikey}.direction'); 
        print_line('reg_analysis','var.Imaging{1}.results.roi{roikey}.regressor.analysis');
        print_line('reg_statistics','var.Imaging{1}.results.roi{roikey}.regressor.statistics');
        print_line('volume_mm','var.Imaging{1}.results.roi{roikey}.volume.mm');
        print_line('volume_vox','var.Imaging{1}.results.roi{roikey}.volume.vox');
        print_line('peak_x','var.Imaging{1}.results.roi{roikey}.peak.coord(1)');
        print_line('peak_y','var.Imaging{1}.results.roi{roikey}.peak.coord(2)');
        print_line('peak_z','var.Imaging{1}.results.roi{roikey}.peak.coord(3)');
        print_line('peak_space','var.Imaging{1}.results.roi{roikey}.peak.space');
        print_line('p_val','var.Imaging{1}.results.roi{roikey}.p.val');
        print_line('p_comparison','var.Imaging{1}.results.roi{roikey}.p.comparison');
        print_line('p_corr','var.Imaging{1}.results.roi{roikey}.p.corr');
        print_line('stat_t','var.Imaging{1}.results.roi{roikey}.stat.t');
        print_line('stat_z','var.Imaging{1}.results.roi{roikey}.stat.z');
        print_line('cond','var.Imaging{1}.results.roi{roikey}.condition');
        print_line('roi_id','roikey','last');
    end
end
    

if strcmp(categ('fa'),'true'); 
    for FAkey = 1:length(var.Imaging{1}.results.FA)
        fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.fa SET');
        print_line('paper_id','keyname');
        print_line('task','var.Imaging{1}.task');
        print_line('method','var.Imaging{1}.method');
        dirs = num2str(var.Imaging{1}.results.FA{FAkey}.directions);
        print_line('dir','dirs'); clear dirs;
        if isfield(var.Imaging{1}.results.FA{FAkey},'rep')
            print_line('rep','var.Imaging{1}.results.FA{FAkey}.rep');
        end
        print_line('hemisphere','var.Imaging{1}.results.FA{FAkey}.hemisphere');
        print_line('roi','var.Imaging{1}.results.FA{FAkey}.roi');
        print_line('atlas','var.Imaging{1}.results.FA{FAkey}.atlas');
        group_primary = num2str(var.Imaging{1}.results.FA{FAkey}.group.primary);
        print_line('group_primary','group_primary'); clear group_primary;
        print_line('group_comparison','var.Imaging{1}.results.FA{FAkey}.group.comparison');
        group_secondary = num2str(var.Imaging{1}.results.FA{FAkey}.group.secondary);
        print_line('group_secondary','group_secondary'); clear group_secondary;
        print_line('reg_analysis','var.Imaging{1}.results.FA{FAkey}.regressor.analysis');
        print_line('reg_statistics','var.Imaging{1}.results.FA{FAkey}.regressor.statistics');
        print_line('volume_mm','var.Imaging{1}.results.FA{FAkey}.volume.mm');
        print_line('volume_vox','var.Imaging{1}.results.FA{FAkey}.volume.vox');
        print_line('peak_x','var.Imaging{1}.results.FA{FAkey}.peak.coord(1)');
        print_line('peak_y','var.Imaging{1}.results.FA{FAkey}.peak.coord(2)');
        print_line('peak_z','var.Imaging{1}.results.FA{FAkey}.peak.coord(3)');
        print_line('peak_space','var.Imaging{1}.results.FA{FAkey}.peak.space');
        print_line('direction','var.Imaging{1}.results.FA{FAkey}.direction'); 
        print_line('p_val','var.Imaging{1}.results.FA{FAkey}.p.val');
        print_line('p_comparison','var.Imaging{1}.results.FA{FAkey}.p.comparison');
        print_line('p_corr','var.Imaging{1}.results.FA{FAkey}.p.corr');
        print_line('stat_t','var.Imaging{1}.results.FA{FAkey}.stat.t');
        print_line('stat_z','var.Imaging{1}.results.FA{FAkey}.stat.z');
        print_line('cond','var.Imaging{1}.results.FA{FAkey}.condition');
        print_line('fa_id','FAkey','last');
    end
end

if strcmp(categ('md'),'true');  
    for MDkey = 1:length(var.Imaging{1}.results.MD)
        fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.md SET');
        print_line('paper_id','keyname');
        print_line('task','var.Imaging{1}.task');
        print_line('method','var.Imaging{1}.method');
        dirs = num2str(var.Imaging{1}.results.MD{MDkey}.directions);
        print_line('dir','dirs'); clear dirs;
        if isfield(var.Imaging{1}.results.MD{MDkey},'rep')
            print_line('rep','var.Imaging{1}.results.MD{MDkey}.rep');
        end
        print_line('hemisphere','var.Imaging{1}.results.MD{MDkey}.hemisphere');
        print_line('roi','var.Imaging{1}.results.MD{MDkey}.roi');
        print_line('atlas','var.Imaging{1}.results.MD{MDkey}.atlas');
        group_primary = num2str(var.Imaging{1}.results.MD{MDkey}.group{1}.name);
        print_line('group_primary','group_primary'); clear group_primary;
        Lsize = size(var.Imaging{1}.results.MD{MDkey}.comparison,2);
        switch Lsize
            case 1;
                if ~isempty(var.Imaging{1}.results.MD{MDkey}.comparison{1})
                    print_line('L1_comparison','var.Imaging{1}.results.MD{MDkey}.comparison{1}.name');
                end
            case 2;
                if ~isempty(var.Imaging{1}.results.MD{MDkey}.comparison{1})
                    print_line('L1_comparison','var.Imaging{1}.results.MD{MDkey}.comparison{1}.name');
                end
                if ~isempty(var.Imaging{1}.results.MD{MDkey}.comparison{2})
                    print_line('L2_comparison','var.Imaging{1}.results.MD{MDkey}.comparison{2}.name');
                end
            case 3;
                if ~isempty(var.Imaging{1}.results.MD{MDkey}.comparison{1})
                    print_line('L1_comparison','var.Imaging{1}.results.MD{MDkey}.comparison{1}.name');
                end
                if ~isempty(var.Imaging{1}.results.MD{MDkey}.comparison{2})
                    print_line('L2_comparison','var.Imaging{1}.results.MD{MDkey}.comparison{2}.name');
                end
                if ~isempty(var.Imaging{1}.results.MD{MDkey}.comparison{3})
                    print_line('L3_comparison','var.Imaging{1}.results.MD{MDkey}.comparison{3}.name');
                end
        end
        group_secondary = num2str(var.Imaging{1}.results.MD{MDkey}.group{2}.name);
        print_line('group_secondary','group_secondary'); clear group secondary;
        print_line('med_primary','var.Imaging{1}.results.MD{MDkey}.group{1}.med');
        print_line('med_secondary','var.Imaging{1}.results.MD{MDkey}.group{2}.med');
        print_line('reg_analysis','var.Imaging{1}.results.MD{MDkey}.regressor.analysis');
        print_line('reg_statistics','var.Imaging{1}.results.MD{MDkey}.regressor.statistics');
        print_line('volume_mm','var.Imaging{1}.results.MD{MDkey}.volume.mm');
        print_line('volume_vox','var.Imaging{1}.results.MD{MDkey}.volume.vox');
        print_line('peak_x','var.Imaging{1}.results.MD{MDkey}.peak.coord(1)');
        print_line('peak_y','var.Imaging{1}.results.MD{MDkey}.peak.coord(2)');
        print_line('peak_z','var.Imaging{1}.results.MD{MDkey}.peak.coord(3)');
        print_line('peak_space','var.Imaging{1}.results.MD{MDkey}.peak.space');
        print_line('direction','var.Imaging{1}.results.MD{MDkey}.direction'); 
        print_line('p_val','var.Imaging{1}.results.MD{MDkey}.p.val');
        print_line('p_comparison','var.Imaging{1}.results.MD{MDkey}.p.comparison');
        print_line('p_corr','var.Imaging{1}.results.MD{MDkey}.p.corr');
        print_line('stat_t','var.Imaging{1}.results.MD{MDkey}.stat.t');
        print_line('stat_z','var.Imaging{1}.results.MD{MDkey}.stat.z');
        print_line('md_id','MDkey','last');
        
        % Add each group Lambda values result, linked to the md by the MDkey
        for mdreskey = 1:length(var.Imaging{1}.results.MD{MDkey}.group)
            fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.md_result SET');
            print_line('paper_id','keyname');
            groupid = num2str(var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.name);
            print_line('group_id','groupid'); clear groupid;
            print_line('med','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.med');
            if ~isempty(var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L)
                Lressize = size(var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L,1);
                switch Lressize
                    case 1
                        if ~isempty(var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(1))
                            print_line('L1_mean','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(1,2)');
                            print_line('L1_SD','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(1,3)');
                        end
                    case 2
                        if ~isempty(var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(1))
                            print_line('L1_mean','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(1,2)');
                            print_line('L1_SD','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(1,3)');
                        end
                        if ~isempty(var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(2))
                            print_line('L2_mean','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(2,2)');
                            print_line('L2_SD','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(2,3)');
                        end
                    case 3
                        if ~isempty(var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(1))
                            print_line('L1_mean','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(1,2)');
                            print_line('L1_SD','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(1,3)');
                        end
                        if ~isempty(var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(2))
                            print_line('L2_mean','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(2,2)');
                            print_line('L2_SD','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(2,3)');
                        end
                        if ~isempty(var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(3))
                            print_line('L3_mean','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(3,2)');
                            print_line('L3_SD','var.Imaging{1}.results.MD{MDkey}.group{mdreskey}.L(3,3)');
                        end
                end
            end
            print_line('md_id','MDkey','last');
        end
    end
end
    

% for rd results (type dti)
if strcmp(categ('rd'),'true')
     for RDkey = 1:length(var.Imaging{1}.results.RD)
        fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.rd SET');
        print_line('paper_id','keyname');
        print_line('task','var.Imaging{1}.task');
        print_line('method','var.Imaging{1}.method');
        dirs = num2str(var.Imaging{1}.results.RD{RDkey}.dir);
        print_line('dir','dirs'); clear dirs;
        print_line('rep','var.Imaging{1}.results.RD{RDkey}.rep');
        groupids = num2str(var.Imaging{1}.results.RD{RDkey}.group.id);
        print_line('groups','groupids'); clear groupids;
        print_line('tract_name','var.Imaging{1}.results.RD{RDkey}.tract.name');
        print_line('tract_hemisphere','var.Imaging{1}.results.RD{RDkey}.tract.hemisphere');
        print_line('tract_type','var.Imaging{1}.results.RD{RDkey}.tract.type');
        print_line('reg_analysis','var.Imaging{1}.results.RD{RDkey}.regressor.analysis');
        print_line('reg_statistics','var.Imaging{1}.results.RD{RDkey}.regressor.statistics');
        print_line('roi','var.Imaging{1}.results.RD{RDkey}.roi.name');
        print_line('atlas','var.Imaging{1}.results.RD{RDkey}.roi.atlas');
        print_line('hemisphere','var.Imaging{1}.results.RD{RDkey}.roi.hemisphere');
        print_line('volume_mm','var.Imaging{1}.results.RD{RDkey}.volume.mm');
        print_line('volume_vox','var.Imaging{1}.results.RD{RDkey}.volume.vox');
        print_line('peak_x','var.Imaging{1}.results.RD{RDkey}.peak.coord(1)');
        print_line('peak_y','var.Imaging{1}.results.RD{RDkey}.peak.coord(2)');
        print_line('peak_z','var.Imaging{1}.results.RD{RDkey}.peak.coord(3)');
        print_line('peak_space','var.Imaging{1}.results.RD{RDkey}.peak.space');
        print_line('direction','var.Imaging{1}.results.RD{RDkey}.direction'); 
        print_line('p_val','var.Imaging{1}.results.RD{RDkey}.p.val');
        print_line('p_comparison','var.Imaging{1}.results.RD{RDkey}.p.comparison');
        print_line('p_corr','var.Imaging{1}.results.RD{RDkey}.p.corr');
        print_line('stat_t','var.Imaging{1}.results.RD{RDkey}.stat.t');
        print_line('stat_z','var.Imaging{1}.results.RD{RDkey}.stat.z');
        print_line('pattern','var.Imaging{1}.results.RD{RDkey}.pattern');
        print_line('connection_gm','var.Imaging{1}.results.RD{RDkey}.connection.gm');
        print_line('rd_id','RDkey','last');
     end
end

if strcmp(categ('fda'),'true'); 
    for FDAkey = 1:length(var.Imaging{1}.results.FDA)
        fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.fda SET');
        print_line('paper_id','keyname');
        print_line('task','var.Imaging{1}.task');
        print_line('method','var.Imaging{1}.method');
        numFDAmodels = length(var.Imaging{1}.results.FDA{FDAkey}.model);
        print_line('fda_models','numFDAmodels'); clear numFDAmodels;
        print_line('roi','var.Imaging{1}.results.FDA{FDAkey}.roi');
        print_line('volume_vox','var.Imaging{1}.results.FDA{FDAkey}.volume.vox');
        print_line('volume_mm','var.Imaging{1}.results.FDA{FDAkey}.volume.mm');
        print_line('peak_x','var.Imaging{1}.results.FDA{FDAkey}.peak.coord(1)');
        print_line('peak_y','var.Imaging{1}.results.FDA{FDAkey}.peak.coord(2)');        
        print_line('peak_z','var.Imaging{1}.results.FDA{FDAkey}.peak.coord(3)');
        print_line('peak_space','var.Imaging{1}.results.FDA{FDAkey}.peak.space');
        print_line('p_val','var.Imaging{1}.results.FDA{FDAkey}.p.val');
        print_line('p_comparison','var.Imaging{1}.results.FDA{FDAkey}.p.comparison');
        print_line('p_corr','var.Imaging{1}.results.FDA{FDAkey}.p.corr');
        print_line('stat_t','var.Imaging{1}.results.FDA{FDAkey}.stat.t');
        print_line('stat_z','var.Imaging{1}.results.FDA{FDAkey}.stat.z');
        print_line('cond','var.Imaging{1}.results.FDA{FDAkey}.condition');
        print_line('fda_id','FDAkey','last');
        
        for FDAmodelkey = 1:length(var.Imaging{1}.results.FDA{FDAkey}.model)
            fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.fda_model SET');
            print_line('paper_id','keyname');
            print_line('fda_id','FDAkey');
            print_line('name','var.Imaging{1}.results.FDA{FDAkey}.model{FDAmodelkey}.name');
            print_line('type','var.Imaging{1}.results.FDA{FDAkey}.model{FDAmodelkey}.type');
            print_line('training_correct','var.Imaging{1}.results.FDA{FDAkey}.model{FDAmodelkey}.training.rate.correct');
            print_line('reg_analysis','var.Imaging{1}.results.FDA{FDAkey}.model{FDAmodelkey}.regressor.analysis');
            print_line('reg_statistics','var.Imaging{1}.results.FDA{FDAkey}.model{FDAmodelkey}.regressor.statistics');
            print_line('comparison','var.Imaging{1}.results.FDA{FDAkey}.model{FDAmodelkey}.comparison');
            print_line('fda_model_id','FDAmodelkey','last');
            
            for LOOkey = 1:length(var.Imaging{1}.results.FDA{FDAkey}.model{FDAmodelkey}.LOO.group)
                fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.loo SET');
                print_line('paper_id','keyname');
                print_line('fda_id','FDAkey');
                print_line('loo_id','LOOkey');
                groupid = num2str(var.Imaging{1}.results.FDA{FDAkey}.model{FDAmodelkey}.LOO.group{LOOkey}.id);
                print_line('group_id','groupid'); clear groupid; 
                print_line('per_correct','var.Imaging{1}.results.FDA{FDAkey}.model{FDAmodelkey}.LOO.group{LOOkey}.rate.correct');
                print_line('fda_model_id','FDAmodelkey','last');
            end
        end
    end
end
        
if strcmp(categ('fc'),'true'); 
    for fckey = 1:length(var.Imaging{1}.results.fc)
        fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.fc SET');
        print_line('paper_id','keyname');
        print_line('task','var.Imaging{1}.task');
        print_line('method','var.Imaging{1}.method');
        seedcount = length(var.Imaging{1}.results.fc{fckey}.seed);
        print_line('seeds','seedcount'); clear seedcount;
        group_primary = num2str(var.Imaging{1}.results.fc{fckey}.group.primary);
        print_line('group_primary','group_primary'); clear group_primary;
        print_line('group_comparison','var.Imaging{1}.results.fc{fckey}.group.comparison');
        group_secondary = num2str(var.Imaging{1}.results.fc{fckey}.group.secondary);
        print_line('group_secondary','group_secondary'); clear group_secondary;
        if isfield(var.Imaging{1}.results.fc{fckey}.group,'med')
            print_line('med_primary','var.Imaging{1}.results.fc{fckey}.group.med.primary')
            print_line('med_secondary','var.Imaging{1}.results.fc{fckey}.group.med.secondary')
        end
        print_line('reg_analysis','var.Imaging{1}.results.fc{fckey}.regressor.analysis');
        print_line('reg_statistics','var.Imaging{1}.results.fc{fckey}.regressor.statistics');
        print_line('fc_id','fckey','last');
        for fcseedkey = 1:length(var.Imaging{1}.results.fc{fckey}.seed)
            for fcconnkey = 1:length(var.Imaging{1}.results.fc{fckey}.seed{fcseedkey});
                fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.seed SET');
                print_line('paper_id','keyname');
                print_line('fc_id','fckey');
                print_line('seed_roi','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.name');
                print_line('seed_atlas','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.atlas');
                print_line('seed_hemisphere','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.hemisphere');
                print_line('conn_roi','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.name');
                print_line('conn_atlas','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.atlas');
                print_line('conn_hemisphere','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.hemisphere');
                print_line('conn_volume_vox','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.volume.vox');
                print_line('conn_volume_mm','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.volume.mm');
                print_line('conn_peak_x','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.peak.coord(1)');
                print_line('conn_peak_y','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.peak.coord(2)'); 
                print_line('conn_peak_z','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.peak.coord(3)');                
                print_line('conn_peak_space','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.peak.space');
                print_line('direction','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.direction');
                print_line('p_val','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.p.val');
                print_line('p_comparison','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.p.comparison');
                print_line('p_corr','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.p.corr');
                print_line('stat_t','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.stat.t');
                print_line('stat_z','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.stat.z');
                print_line('cond','var.Imaging{1}.results.fc{fckey}.seed{fcseedkey}.connection{fcconnkey}.condition');
                print_line('seed_id','fcseedkey','last');
                % NEED TO LOOK AT VARIABLE - need some way to designate group 1 > group 2 - right now is just a string!
            end
        end
    end
end

% This is for imaging anova results
if strcmp(categ('anova'),'true'); 
    for anovakey = 1:length(var.Imaging{1}.results.anova)
        fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb.anova SET');
        print_line('paper_id','keyname');
        print_line('task','var.Imaging{1}.task');
        print_line('method','var.Imaging{1}.method');
        print_line('roi','var.Imaging{1}.results.anova{anovakey}.roi');
        print_line('hemisphere','var.Imaging{1}.results.anova{anovakey}.hemisphere');
        print_line('atlas','var.Imaging{1}.results.anova{anovakey}.atlas');
        condition_length = length(var.Imaging{1}.results.anova{anovakey}.condition);
        print_line('conditions','condition_length');
        if condition_length > 0
            condition_names(1) = var.Imaging{1}.results.anova{anovakey}.condition{1}.name;
            if condition_length > 1
                for con_index = 2:condition_length
                    condition_names(con_index) = var.Imaging{1}.results.anova{anovakey}.condition{con_index}.name;
                end
            end            
        end; clear condition_length;
        print_line('conditions_names','condition_names'); clear condition_names;
        print_line('reg_analysis','var.Imaging{1}.results.anova{anovakey}.regressor.analysis');
        print_line('reg_statistics','var.Imaging{1}.results.anova{anovakey}.regressor.statistics');
        print_line('volume_vox','var.Imaging{1}.results.anova{anovakey}.volume.vox');
        print_line('volume_mm','var.Imaging{1}.results.anova{anovakey}.volume.mm');
        print_line('peak_x','var.Imaging{1}.results.anova{anovakey}.peak.coord(1)');
        print_line('peak_y','var.Imaging{1}.results.anova{anovakey}.peak.coord(2)');        
        print_line('peak_z','var.Imaging{1}.results.anova{anovakey}.peak.coord(3)');
        print_line('peak_space','var.Imaging{1}.results.anova{anovakey}.peak.space');
        print_line('p_val','var.Imaging{1}.results.anova{anovakey}.p.val');
        print_line('p_comparison','var.Imaging{1}.results.anova{anovakey}.p.comparison');
        print_line('p_corr','var.Imaging{1}.results.anova{anovakey}.p.corr');
        print_line('stat_f','var.Imaging{1}.results.anova{anovakey}.stat.f');
        dof = num2str(var.Imaging{1}.results.anova{anovakey}.stat.dof);
        print_line('stat_dof','dof'); clear dof;
        print_line('space','var.Imaging{1}.results.anova{anovakey}.space');
        print_line('anova_id','anovakey','last');
    end
end
   
% Lastly, set up the log table to keep track of table indexes
% fprintf(fid,'%s\n','INSERT INTO vbmiscom_conndb. log');
% paper_id
%    software_id
%    scanner_id
%    group_id
%    measure_id
%    roi_id
%    fc_id
%    fa_id
%    md_id
%    fda_id
%    anova_id

% And close the file for writing
fclose(fid);

% PRINTING FUNCTIONs
%--------------------------------------------------------------------------
% Print the contents of a single or structural double or char variable to file
function f = print_line(colname, varname, format)
    
    % If we are getting an index, make sure that the field exists
    if strcmp(varname(end),')')
        if isempty(eval(varname(1:regexp(varname,'(','end')-1)))
            return;
        end
    end
    % First check if the passed variable is empty.  If so, do nothing
        if ~isempty(eval(varname))    
            % first check for structure of varname.  Assume all cells to be same type
            if ~isempty(eval(varname))
                if iscell(eval(varname))   
                    if ischar(eval(horzcat((varname),'{1}')));
                        input_write = [ '"' eval(horzcat((varname),'{1}')) ];
                        if length(eval(varname)) > 1
                            input_write = [ input_write ', ' ];
                            for b = 2:length(eval(varname))
                                if b ~= length(eval(varname))
                                    input_write = [ input_write ' ' eval(horzcat((varname),'{b}')) ',' ];
                                else 
                                    input_write = [ input_write ' ' eval(horzcat((varname),'{b}')) '",' ];
                                end
                            end
                        else input_write = [ input_write '",' ];
                        end
                    elseif strcmp(class(eval(horzcat((varname),'{1}'))),'double')
                        input_write = num2str(eval(horzcat((varname),'{1}')));
                        if length(eval(varname)) > 1
                            input_write = [ input_write ', ' ]; 
                            for b = 2:length(eval(varname))
                                if b ~= length(eval(varname))
                                    input_write = [ input_write ' ' num2str(eval(horzcat((varname),'{b}'))) ',' ];
                                else 
                                    input_write = [ input_write ' ' num2str(eval(horzcat((varname),'{b}'))) ];
                                end
                            end
                        end
                    end
                elseif ischar(eval(varname))
                    input_write = [ '"' eval(varname) '",' ];
                elseif strcmp(class(eval(varname)),'double')
                    input_write = [ num2str(eval(varname)) ',' ];
                end
            end

            % Determine if there are special printing options
            if (nargin < 3)
                formatst = '%s%s%s\n';
            else % Here we can have the option for custom format strings
                switch format
                    case 'last'; 
                        fprintf(fid,'%s%s%s%s\n\n',colname,' = ', input_write(1:end-1),';'); return; % last - close with ';'
                end
            end

            % Now print sql statement line to open file
            fprintf(fid,formatst,colname,' = ', input_write);
        end
end

end


