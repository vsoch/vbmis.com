%%
DB_5.Publication.author = {
                           'Nikos Makris'
                           'Stephen L. Buka'
                           'Joseph Biederman'
                           'George M. Papadimitriou'
                           'Steven M. Hodge'
                           'Eve M. Valera'
                           'Ariel B. Brown'
                           'George Bush'
                           'Michael C. Monuteaux'
                           'Verne S. Caviness'
                           'David N. Kennedy'
                           'Larry J. Seidman'
                           }';
%%
DB_5.Publication.page = [1210 1220];
DB_5.Publication.title = {'Attention and Executive Systems Abnormalities in Adults with Childhood ADHD: A DT-MRI Study of Connections'};
DB_5.Publication.year = 2008;
DB_5.Publication.volume = 18;
DB_5.Publication.keyword = {
                            'ADHD'
                            'association fiber pathways'
                            'cingulum'
                            }';
DB_5.Publication.country = 'USA';
DB_5.Publication.journal = {'Cerebral Cortex'};
DB_5.Population.group{1}.id = {'ADHD'};
DB_5.Population.group{1}.age.range = [37 46];
DB_5.Population.group{1}.age.stat = [41.3 2.1];
DB_5.Population.group{1}.n = [12];
DB_5.Population.group{1}.med = {'naive'};
DB_5.Population.group{2}.id = {'control'};
DB_5.Population.group{2}.age.range = [37 46];
DB_5.Population.group{2}.age.stat = [40.5 2.1];
DB_5.Population.group{2}.n = [17];
DB_5.Population.group{2}.med = {'none'};
DB_5.Population.comparison{1}.ids = [1 2];
DB_5.Population.comparison{1}.name = {'age'};
DB_5.Population.comparison{1}.stat.t = -0.98;
DB_5.Population.comparison{1}.stat.z = [];
DB_5.Population.comparison{1}.p = 0.4;
DB_5.Behavioral = [];
DB_5.Imaging{1}.task = {''};
DB_5.Imaging{1}.scanner.make = {'Siemens'};
DB_5.Imaging{1}.scanner.model = {'Avanto'};
DB_5.Imaging{1}.scanner.telsa = [];
DB_5.Imaging{1}.results.software.preprocess = {'FSL'};
DB_5.Imaging{1}.results.software.analysis = {'FSL'};
DB_5.Imaging{1}.results.software.statistics = {'JMP'};
DB_5.Imaging{1}.results.FA{1}.runs = 1;
DB_5.Imaging{1}.results.FA{1}.directions = [6 60];
DB_5.Imaging{1}.results.FA{1}.roi = {'CB'};
DB_5.Imaging{1}.results.FA{1}.hemisphere = {'right'};
DB_5.Imaging{1}.results.FA{1}.atlas = {''};
DB_5.Imaging{1}.results.FA{1}.group.primary = 1;
DB_5.Imaging{1}.results.FA{1}.group.comparison = {'>'};
DB_5.Imaging{1}.results.FA{1}.group.secondary = 2;
DB_5.Imaging{1}.results.FA{1}.regressor.analysis = {};
DB_5.Imaging{1}.results.FA{1}.regressor.statistics = {'scanning directions'};
DB_5.Imaging{1}.results.FA{1}.volume.mm = [];
DB_5.Imaging{1}.results.FA{1}.volume.vox = [];
DB_5.Imaging{1}.results.FA{1}.peak.coord = [];
DB_5.Imaging{1}.results.FA{1}.peak.space = {'mni'};
DB_5.Imaging{1}.results.FA{1}.direction = {'-'};
DB_5.Imaging{1}.results.FA{1}.p.comparison = {'='};
DB_5.Imaging{1}.results.FA{1}.p.val = 0.02;
DB_5.Imaging{1}.results.FA{1}.p.corr = {'fwe'};
DB_5.Imaging{1}.results.FA{1}.stat.t = -2.5;
DB_5.Imaging{1}.results.FA{1}.stat.z = [];
DB_5.Imaging{1}.results.FA{1}.condition = {''};
DB_5.Imaging{1}.results.FA{2}.runs = 1;
DB_5.Imaging{1}.results.FA{2}.directions = [6 60];
DB_5.Imaging{1}.results.FA{2}.roi = {'SLF II'};
DB_5.Imaging{1}.results.FA{2}.hemisphere = {'right'};
DB_5.Imaging{1}.results.FA{2}.atlas = {''};
DB_5.Imaging{1}.results.FA{2}.group.primary = 1;
DB_5.Imaging{1}.results.FA{2}.group.comparison = {'>'};
DB_5.Imaging{1}.results.FA{2}.group.secondary = 2;
DB_5.Imaging{1}.results.FA{2}.regressor.analysis = {};
DB_5.Imaging{1}.results.FA{2}.regressor.statistics = {'scanning directions'};
DB_5.Imaging{1}.results.FA{2}.volume.mm = [];
DB_5.Imaging{1}.results.FA{2}.volume.vox = [];
DB_5.Imaging{1}.results.FA{2}.peak.coord = [];
DB_5.Imaging{1}.results.FA{2}.peak.space = {'mni'};
DB_5.Imaging{1}.results.FA{2}.direction = {'-'};
DB_5.Imaging{1}.results.FA{2}.p.comparison = {'='};
DB_5.Imaging{1}.results.FA{2}.p.val = 0.03;
DB_5.Imaging{1}.results.FA{2}.p.corr = {'fwe'};
DB_5.Imaging{1}.results.FA{2}.stat.t = -2.2;
DB_5.Imaging{1}.results.FA{2}.stat.z = [];
DB_5.Imaging{1}.results.FA{2}.condition = {''};
DB_5.Imaging{1}.summary = {''};
DB_5.Imaging{1}.method = {'DTI'};
DB_5.Topic = {'ADHD'};
