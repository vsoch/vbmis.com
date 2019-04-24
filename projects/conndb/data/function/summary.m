% DATABASE OBJECT
DB.Topic = {''};        % one or more strings that describe the topic
DB.Imaging = {};        % a cellular array of imaging types (DTI, fMRI)
DB.Behavioral = {};     % a cellular array of behavioral types (measure)
DB.Publication = {};    % Publication meta data
DB.Population = {};     % Group and demographic information

%--------------------------------------------------------------------------
% Components of Database Object

% PUBLICATION OBJECT
DB.Publication.author = {''};
DB.Publication.page = [start end];
DB.Publication.title = {''};
DB.Publication.year = [];
DB.Publication.volume = [];
DB.Publication.keyword = {''};
DB.Publication.country = {''};
DB.Publication.journal = {''};

% POPULATION OBJECT
% consists of group objects and comparison objects

% IMAGING OBJECT
DB.Imaging{i}.task = {}; 
DB.Imaging{i}.scanner = [];
DB.Imaging{i}.scanner.make = '';
DB.Imaging{i}.scanner.model = '';
DB.Imaging{i}.scanner.telsa = [];
DB.Imaging{i}.summary = {''}; 
DB.Imaging{i}.method = {''};  %fMRI %DTI
DB.Imaging{i}.results.software = [];
DB.Imaging{i}.results.software.preprocess = {''};
DB.Imaging{i}.results.software.analysis = {''};
DB.Imaging{i}.results.software.statistics = {''};

% IMAGING SUBTYPES
% FA

% BEHAVIORAL OBJECT
DB.Behavioral{1} = {}; 

% BEHAVIORAL SUBTYPES - measure
DB.Behavioral{1}.measure{1}.name = {''};
DB.Behavioral{1}.measure{1}.version={''};
DB.Behavioral{1}.measure{1}.cogpo=[];
DB.Behavioral{1}.measure{1}.results{1}.subscale={'total'};
DB.Behavioral{1}.measure{1}.results{1}.group{1}.name = {'ADHD'};
DB.Behavioral{1}.measure{1}.results{1}.group{1}.mean = [];
DB.Behavioral{1}.measure{1}.results{1}.group{1}.SD = [];
DB.Behavioral{1}.measure{1}.results{1}.group{2}.name = {'control'};
DB.Behavioral{1}.measure{1}.results{1}.group{2}.mean = [];
DB.Behavioral{1}.measure{1}.results{1}.group{2}.SD = [];
% Do we want a medication variable under group? (currently is put w/ name
DB.Behavioral{1}.measure{1}.results{1}.comparison{1}.name = {'ADHD > control'};
DB.Behavioral{1}.measure{1}.results{1}.comparison{1}.stat.t = [];
DB.Behavioral{1}.measure{1}.results{1}.comparison{1}.stat.z = [];
DB.Behavioral{1}.measure{1}.results{1}.comparison{1}.p.comparison = {'<'};
DB.Behavioral{1}.measure{1}.results{1}.comparison{1}.p.val = [];


%--------------------------------------------------------------------------
% Piecewise Objects that make up larger ones

% GROUP OBJECT
group{i}.id = {''};
group{i}.age.range = [min max];
group{i}.age.stat = [mean SD];
group{i}.n = [total male female];
group{i}.med = {};
group{i}.gender = {'both'};

% COMPARISON OBJECT - always a subcomponent of a higher level object that
% contains group objects. The ids variable contains integers that
% correspond to the groups being compared
comparison{i}.ids = [1 2 3];
comparison{i}.name = {'age'};
comparison{i}.stat.t = [];
comparison{i}.stat.z = [];
comparison{i}.p = [];

% Should have functions for:
1) adding comparison or group to higher level object in next available slot
2) deleting comparison or group from higher level object