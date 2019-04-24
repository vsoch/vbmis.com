% Need to make:

% NEED TO DO FOR ALL
% get rid of all solo strings ''
% change population primary to group{1}
% for FA change directions to dir and add rep 


% 1) Script for adding new paper (add_entry)
% 2) Script for creating imaging object (add_imaging)
% 3) Script for creating behavioral object (add_behav)
% 4) Script for creating Imaging --> fc (add_fc)
% 5) Script for creating Imaging --> ANOVA (add_ANOVA)
% 6) Script for deleting things
% 7) Script for adding objects to master db file
% 8) Script for printing contents of database for display and to file
% 9) Script for querying / searching studies

% -----To think about...
% If comparison doesn't exist for group, do not include? or include empty?
% we should have different OBJECTS that make up each type - and we can
% mix and match and aren't limited by anything.  Each type can also have
% it's own "type specific" variables

% GROUP OBJECT



% Load DB object
load DB.mat

% Find the next open key
nextkey = size(DB,1)+1;

%-------------------------------------------------------------------------
% Input Study Publication Data - this is currently just written to be copy
% pasted on command line once its filled in, but can easily be made
% interactive in the future, if need be!

% TOPIC and TOP FIELDS
DB{nextkey}.Topic = {};
DB{nextkey}.Imaging = []; 
DB{nextkey}.Behavioral = []; 

% PUBLICATION DATA
DB{nextkey}.Publication.author = {''};
DB{nextkey}.Publication.page.start = [];
DB{nextkey}.Publication.page.end = [];
DB{nextkey}.Publication.title = '';
DB{nextkey}.Publication.year = [];
DB{nextkey}.Publication.volume = '';
DB{nextkey}.Publication.keyword = {};
DB{nextkey}.Publication.country = '';
DB{nextkey}.Publication.journal = '';

% POPULATION DATA (control and experiment should be changed to group type)
DB{nextkey}.Population.control.age.min = [];
DB{nextkey}.Population.control.age.max = [];
DB{nextkey}.Population.control.age.mean = [];
DB{nextkey}.Population.control.age.SD = [];
DB{nextkey}.Population.control.n = [];
DB{nextkey}.Population.control.gender = {};
DB{nextkey}.Population.control.medication = {};
DB{nextkey}.Population.control.id = {'control'};

% This is the new group object to be used with population - started at DB_13
% DB_1 through DB_12 need to have population groups redone with this format
DB_13.Population.group{1}.id = {};
DB_13.Population.group{1}.age.range = [min max];
DB_13.Population.group{1}.age.stat = [mean SD];
DB_13.Population.group{1}.n = [total male female];
DB_13.Population.group{1}.med = {};

DB{nextkey}.Population.experiment.age.min = [];
DB{nextkey}.Population.experiment.age.max = [];
DB{nextkey}.Population.experiment.age.mean = [];
DB{nextkey}.Population.experiment.age.SD = [];
DB{nextkey}.Population.experiment.n = [];
DB{nextkey}.Population.experiment.gender = {};
DB{nextkey}.Population.experiment.medication = {};
DB{nextkey}.Population.experiment.id = {'ADHD'};

DB{nextkey}.Population.comparison{1}.ids = {'ADHD vs control'};
DB{nextkey}.Population.comparison{1}.name = {'age'};
DB{nextkey}.Population.comparison{1}.stat.t = -0.66;
DB{nextkey}.Population.comparison{1}.stat.z = [];
DB{nextkey}.Population.comparison{1}.p = 0.516;

%-------------------------------------------------------------------------
% INPUT NEW IMAGING STUDY

% get the next available imaging slot
imagekey = size(DB{nextkey}.Imaging,1)+1;
 
DB{nextkey}.Imaging{imagekey}.task = {}; 
DB{nextkey}.Imaging{imagekey}.scanner = [];
DB{nextkey}.Imaging{imagekey}.scanner.make = '';
DB{nextkey}.Imaging{imagekey}.scanner.model = '';
DB{nextkey}.Imaging{imagekey}.scanner.telsa = [];
DB{nextkey}.Imaging{imagekey}.summary = {}; 
DB{nextkey}.Imaging{imagekey}.method = {};  %fMRI %DTI 

%-------------------------------------------------------------------------
% Input Results for Active Imaging Study

DB{nextkey}.Imaging{imagekey}.results.software = [];
DB{nextkey}.Imaging{imagekey}.results.software.preprocess = {};
DB{nextkey}.Imaging{imagekey}.results.software.analysis = {};
DB{nextkey}.Imaging{imagekey}.results.software.statistics = {};

%-------------------------------------------------------------------------
% Input Results for functional connectivity (fc), or E (efficiency with
% Cost variable)

% Get the next available fc slot
if isfield(DB{1}.Imaging{1}.results,'fc')
    fckey = size(DB{nextkey}.Imaging{imagekey}.results.fc,1)+1;
else
    fckey = 1;
end

% Group Information - should be changed to group object
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.group.primary = '';
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.group.comparison = [];
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.group.secondary = [];
% Regressors
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.regressor.analysis = {};
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.regressor.statistics = {};

% Seed Region
if isfield(DB{nextkey}.Imaging{imagekey}.results.fc{fckey},'seed')  % Get the next available seed slot
    seedkey = size(DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed,1)+1;
else
    seedkey = 1;
end

DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.hemisphere = {''};
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.name = '';
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.atlas = '';

% Connection to Seed Region
if isfield(DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey},'connection')  % Get the next available connection slot
    connkey = size(DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection,1)+1;
else
    connkey = 1;
end

DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.hemisphere = {'left'};
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.name = {'globus pallidus','thalamus'};
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.atlas = '';
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.volume.mm = [];
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.volume.vox = [];
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.peak.coord = [   ];
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.peak.space = 'mni';
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.direction = '+';
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.p.comparison = '=';
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.p.val = 0.01;
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.p.corr = 'fwe';
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.stat.t = [];
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.stat.z = [];
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.stat.C = [];
DB{nextkey}.Imaging{imagekey}.results.fc{fckey}.seed{seedkey}.connection{connkey}.condition = '';

%-------------------------------------------------------------------------
% Input Results for network homogeneity (nh)

% Here need to make sure that we are adding to a fMRI object first
if strcmp(DB{nextkey}.Imaging{1}.method,'fMRI')~=0
    
    % Get the next available fc slot
    if isfield(DB{nextkey}.Imaging{imagekey}.results,'nh')
        nhkey = size(DB{nextkey}.Imaging{imagekey}.results.nh,1)+1;
    else
        nhkey = 1;
    end
    
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.name = {''};
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.hemisphere = {''};
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.atlas = '';

    % Group Information - should be changed to group object
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.group.primary = '';
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.group.comparison = [];
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.group.secondary = [];
    % Regressors
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.regressor.analysis = {};
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.regressor.statistics = {};

    % ROI - should be combined with name, hemisphere, atlas, and make ROI
    % object
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.volume.mm = [];
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.volume.vox = [];
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.peak.coord = [   ];
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.peak.space = 'mni';
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.direction = '';
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.p.comparison = '';
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.p.val = [];
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.p.corr = 'fwe';
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.stat.t = [];
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.stat.z = [];
    DB{nextkey}.Imaging{imagekey}.results.nh{nhkey}.condition = ''; % contrast
end

%-------------------------------------------------------------------------
% Input Results for roi activation results

% Get the next available roi slot
if isfield(DB{nextkey}.Imaging{imagekey}.results,'roi')
    roikey = size(DB{nextkey}.Imaging{imagekey}.results.roi,1)+1;
else
    roikey = 1;
end

DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.name = {''};
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.hemisphere = {''};
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.atlas = '';

% Group Information
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.group.primary = '';
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.group.comparison = [];
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.group.secondary = [];
% Regressors
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.regressor.analysis = {};
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.regressor.statistics = {};

% ROI - should be combined with name, hemisphere, atlas, and make ROI
% object
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.volume.mm = [];
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.volume.vox = [];
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.peak.coord = [   ];
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.peak.space = 'mni';
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.direction = '';
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.p.comparison = '';
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.p.val = [];
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.p.corr = 'fwe';
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.stat.t = [];
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.stat.z = [];
DB{nextkey}.Imaging{imagekey}.results.roi{roikey}.condition = ''; % contrast


%-------------------------------------------------------------------------
% Input Results for anova results (sub category of fMRI for now)

% Get the next available anova slot
if isfield(DB{nextkey}.Imaging{imagekey}.results,'anova')
    anovakey = size(DB{nextkey}.Imaging{imagekey}.results.anova,1)+1;
else
    anovakey = 1;
end

% ROI
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.roi = {''};
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.hemisphere = {''};
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.atlas = '';

% Condition Information
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.condition{1}.name = {'group'};
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.condition{1}.types = {'ADHD','control'};
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.condition{2}.name = {'difficulty'};
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.condition{2}.types = {'low','high'};

% Regressors
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.regressor.analysis = {};
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.regressor.statistics = {};

% anova
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.volume.mm = [];
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.volume.vox = [];
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.peak.coord = [   ];
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.peak.space = 'mni';
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.direction = '';
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.p.comparison = '';
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.p.val = [];
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.p.corr = 'fwe';
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.stat.f = [];
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.stat.dof = [];
DB{nextkey}.Imaging{imagekey}.results.anova{anovakey}.contrast = ''; % contrast

%-------------------------------------------------------------------------
% Input Results for FA (subcategory of imaging type DTI)

% Here need to make sure that we are adding to a DTI object first
if strcmp(DB{nextkey}.Imaging{1}.method,'DTI')~=0

    % Get the next available FA slot
    if isfield(DB{1}.Imaging{1}.results,'FA')
        FAkey = size(DB{nextkey}.Imaging{imagekey}.results.FA,1)+1;
    else
        FAkey = 1;
    end

    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.runs = [];
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.dir = [];
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.rep = [];
    
    % ROI information
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.roi = {''};
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.hemisphere = {''};
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.atlas = '';

    % Group Information
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.group.primary = '';
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.group.comparison = [];
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.group.secondary = [];
    
    % Regressors
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.regressor.analysis = {};
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.regressor.statistics = {};

    % FA
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.volume.mm = [];
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.volume.vox = [];
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.peak.coord = [   ];
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.peak.space = 'mni';
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.direction = '';
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.p.comparison = '';
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.p.val = [];
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.p.corr = 'fwe';
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.stat.t = [];
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.stat.z = [];
    DB{nextkey}.Imaging{imagekey}.results.FA{FAkey}.condition = ''; % contrast
else
    error('Results type FA must go under method DTI');
end


%-------------------------------------------------------------------------
% Input Results for MD (subcategory of imaging type DTI)

% Here need to make sure that we are adding to a DTI object first
if strcmp(DB{nextkey}.Imaging{1}.method,'DTI')~=0

    % Get the next available FA slot
    if isfield(DB{1}.Imaging{1}.results,'MD')
        MDkey = size(DB{nextkey}.Imaging{imagekey}.results.MD,1)+1;
    else
        MDkey = 1;
    end
    
    % Group Information
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.group{1}.name = {'ADHD'};
    % [ (direction number)  (mean)  (SD)
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.group{1}.L = [ 1 1241.3 70.7; 2 820.5 48.1; 3 646.1 64.1 ];
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.group{1}.name = {'control'};
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.group{2}.L = [ 1 1188.2 63.2; 2 887.3 47.0; 3 749.3 48.5 ];
    
    % The comparison index {1} should correspond to the lambda direction (1 2 or 3)
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.comparison{1}.name={'ADHD > control'};
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.comparison{1}.stat.t = [];
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.comparison{1}.stat.z = [];
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.comparison{1}.p.comparison = '<';
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.comparison{1}.p.val=0.001;
    
    % Regressors
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.regressor.analysis = {};
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.regressor.statistics = {};

    % MD
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.volume.mm = [];
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.volume.vox = [];
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.peak.coord = [   ];
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.peak.space = 'mni';
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.direction = '';
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.p.comparison = '';
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.p.val = [];
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.p.corr = 'fwe';
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.stat.t = [];
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.stat.z = [];
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.condition = ''; % contrast
    
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.runs = [];
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.directions = [];
    
    % ROI information
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.roi = {''};
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.hemisphere = {''};
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.atlas = '';
    DB{nextkey}.Imaging{imagekey}.results.MD{MDkey}.FAkey = [];

else
    error('Results type MD must go under method DTI');
end


%-------------------------------------------------------------------------
% Input Results for RD - Radial Diffusivity (subcategory of DTI)

% Here need to make sure that we are adding to a DTI object first
if strcmp(DB{nextkey}.Imaging{1}.method,'DTI')~=0

    % Get the next available FA slot
    if isfield(DB{1}.Imaging{1}.results,'RD')
        RDkey = size(DB{nextkey}.Imaging{imagekey}.results.RD,1)+1;
    else
        RDkey = 1;
    end

    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.dir = [];
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.rep = [];
    
    % Group Information
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.group.id = [1 2];
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.tract.name = {''};
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.tract.hemisphere = {''};
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.tract.type = {''};
    
    % Regressors
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.regressor.analysis = {};
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.regressor.statistics = {};

    % RD
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.roi.name = {''};
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.roi.atlas = {''};
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.volume.mm = [];
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.volume.vox = [];
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.peak.coord = [   ];
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.peak.space = {'mni'};
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.direction = {''};
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.p.comparison = {''};
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.p.val = [];
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.p.corr = {'fwe'};
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.stat.t = [];
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.stat.z = [];
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.pattern = {''}; % contrast
    DB{nextkey}.Imaging{imagekey}.results.RD{RDkey}.connection.gm = {''}; % associated gray matter connections
else
    error('Results type RD must go under method DTI');
end

%-------------------------------------------------------------------------
% Input Results for Fisher Discriminative Analysis (FDA) of subtype
% fMRI

% Here need to make sure that we are adding to a DTI object first
if strcmp(DB{nextkey}.Imaging{1}.method,'fMRI')~=0

    % Get the next available FDA slot
    if isfield(DB{nextkey}.Imaging{imagekey}.results,'FDA')
        FDAkey = size(DB{nextkey}.Imaging{imagekey}.results.FDA,1)+1;
    else
        FDAkey = 1;
    end
    
    % ROI information, if applicable
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.volume.mm = [];
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.volume.vox = [];
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.peak.coord = [   ];
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.peak.space = 'mni';
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.direction = '';
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.p.comparison = '';
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.p.val = [];
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.p.corr = 'fwe';
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.stat.t = [];
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.stat.z = [];
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.condition = ''; % contrast
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.roi = {'prefrontal cortex', 'anterior cingulate cortex'};
    
    % Find next open model slot
    if isfield(DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey},'model')
        modelkey = size(DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model,1)+1;
    else
        modelkey = 1;
    end
    
    % New model object (either functional or structural)
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.name = {};  % ReHo, Intensity, Morphology
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.type = [];  % structural or functional
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.training = [];  % structural or functiona
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.training.rate.correct = 1.0;  % structural or functiona
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.LOO.group{1}.name = {'total'};
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.LOO.group{1}.rate.correct = [];
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.LOO.group{2}.name = {'control'};
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.LOO.group{2}.rate.correct = [];
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.LOO.group{3}.name = {'ADHD'};
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.LOO.group{3}.rate.correct = [];
    
    % Regressors
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.regressor.analysis = {};
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.regressor.statistics = {};
    DB{nextkey}.Imaging{imagekey}.results.FDA{FDAkey}.model{modelkey}.comparison = {};

else
    error('Results type FDA must go under method fMRI');
end


%-------------------------------------------------------------------------
% INPUT NEW BEHAVIORAL STUDY

% get the next available behavioral slot
behavkey = size(DB{nextkey}.Behavioral,1)+1;

DB{nextkey}.Behavioral{behavkey} = {}; 

DB{nextkey}.Behavioral{1}.measure{1}.name = {''};
DB{nextkey}.Behavioral{1}.measure{1}.version={''};
DB{nextkey}.Behavioral{1}.measure{1}.cogpo=[];
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.subscale={'total'};
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.group{1}.name={'ADHD'};
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.group{1}.mean=50.3;
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.group{1}.SD=9.2;
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.group{2}.name={'control'};
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.group{2}.mean=28.3;
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.group{2}.SD=6.1;
% Do we want a medication variable under group? (currently is put w/ name
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.comparison{1}.name={'ADHD > control'};
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.comparison{1}.stat.t=8.972;
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.comparison{1}.stat.z=[];
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.comparison{1}.p.comparison='<';
DB{nextkey}.Behavioral{1}.measure{1}.results{1}.comparison{1}.p.val=0.001;

