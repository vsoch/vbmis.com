%%
DB_2.Publication.author = {
                           'Lixia Tian'
                           'Tianzi Jiang'
                           'Yufeng Wang'
                           'Yufeng Zanga'
                           'Yong Hea'
                           'Meng Liang'
                           'Manqiu Sui'
                           'Qingjiu Caob'
                           'Siyuan Huc'
                           'Miao Peng'
                           'Yan Zhuo'
                           }';
%%
DB_2.Publication.page = [39 43];
DB_2.Publication.title = 'Altered resting-state functional connectivity patterns of anterior cingulate cortex in adolescents with attention deficit hyperactivity disorder';
DB_2.Publication.year = 2006;
DB_2.Publication.volume = 400;
DB_2.Publication.keyword = {
                            'ADHD'
                            'fMRI'
                            'resting state'
                            'functional connectivity'
                            'autonomic control'
                            }';
DB_2.Publication.country = {'China'};
DB_2.Publication.journal = {'Neuroscience Letters'};
DB_2.Population.group{1}.id = {'ADHD'};
DB_2.Population.group{1}.age.range = [11 15];
DB_2.Population.group{1}.age.stat = [13.91 0.35];
DB_2.Population.group{1}.n = [8];
DB_2.Population.group{1}.med = {'off.6mo'};
DB_2.Population.group{2}.id = {'control'};
DB_2.Population.group{2}.age.range = [11 15];
DB_2.Population.group{2}.age.stat = [13.36 0.5];
DB_2.Population.group{2}.n = [8];
DB_2.Population.group{2}.med = {'none'};
DB_2.Behavioral = {};
DB_2.Imaging{1}.task = {'rest'};
DB_2.Imaging{1}.scanner.make = {'Siemens'};
DB_2.Imaging{1}.scanner.model = {'Trio'};
DB_2.Imaging{1}.scanner.telsa = 3;
DB_2.Imaging{1}.results.software.preprocess = {'SPM2'};
DB_2.Imaging{1}.results.software.analysis = {'SPM2'};
DB_2.Imaging{1}.results.software.statistics = {'SPM2'};
DB_2.Imaging{1}.results.fc{1}.group.primary = 1;
DB_2.Imaging{1}.results.fc{1}.group.comparison = {'>'};
DB_2.Imaging{1}.results.fc{1}.group.secondary = 2;
DB_2.Imaging{1}.results.fc{1}.regressor.analysis = {};
DB_2.Imaging{1}.results.fc{1}.regressor.statistics = {};
DB_2.Imaging{1}.results.fc{1}.seed{1}.hemisphere = {};
DB_2.Imaging{1}.results.fc{1}.seed{1}.name = {'dACC'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.atlas = {'drawn'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.hemisphere = {'bilateral'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.name = {'dACC'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.atlas = {};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.volume.mm = 3699;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.volume.vox = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.peak.coord = [3 8 36];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.peak.space = {'tal'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.direction = {'+'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.p.comparison = {'<'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.p.val = 0.05;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.p.corr = {'fwe'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.stat.t = 4.16;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.stat.z = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{1}.condition = {'ADHD > control'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.hemisphere = {'bilateral'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.name = {'PCC'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.atlas = {};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.volume.mm = 1566;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.volume.vox = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.peak.coord = [-3 -38 7];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.peak.space = {'tal'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.direction = {'+'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.p.comparison = {'<'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.p.val = 0.05;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.p.corr = {'fwe'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.stat.t = 3.79;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.stat.z = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{2}.condition = {'ADHD > control'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.hemisphere = {'bilateral'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.name = {'thalamus'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.atlas = {};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.volume.mm = 3942;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.volume.vox = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.peak.coord = [6 -6 0];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.peak.space = {'tal'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.direction = {'+'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.p.comparison = {'<'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.p.val = 0.05;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.p.corr = {'fwe'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.stat.t = 4.39;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.stat.z = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{3}.condition = {'ADHD > control'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.hemisphere = {'left'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.name = {'insula'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.atlas = {};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.volume.mm = 3132;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.volume.vox = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.peak.coord = [-45 5 -15];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.peak.space = {'tal'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.direction = {'+'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.p.comparison = {'<'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.p.val = 0.05;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.p.corr = {'fwe'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.stat.t = 4.02;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.stat.z = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{4}.condition = {'ADHD > control'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.hemisphere = {'right'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.name = {'insula'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.atlas = {};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.volume.mm = 1998;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.volume.vox = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.peak.coord = [36 14 -16];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.peak.space = {'tal'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.direction = {'+'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.p.comparison = {'<'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.p.val = 0.05;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.p.corr = {'fwe'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.stat.t = 4.01;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.stat.z = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{5}.condition = {'ADHD > control'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.hemisphere = {'bilateral'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.name = {
                                                            'brainstem'
                                                            'pons'
                                                            }';
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.atlas = {};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.volume.mm = 2160;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.volume.vox = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.peak.coord = [3 -19 -27];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.peak.space = {'tal'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.direction = {'+'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.p.comparison = {'<'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.p.val = 0.05;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.p.corr = {'fwe'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.stat.t = 5.8;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.stat.z = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{6}.condition = {'ADHD > control'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.hemisphere = {'left'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.name = {'cerebellum'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.atlas = {};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.volume.mm = 1485;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.volume.vox = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.peak.coord = [-24 -61 -52];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.peak.space = {'tal'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.direction = {'+'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.p.comparison = {'<'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.p.val = 0.05;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.p.corr = {'fwe'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.stat.t = 5.07;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.stat.z = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{7}.condition = {'ADHD > control'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.hemisphere = {'right'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.name = {'cerebellum'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.atlas = {};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.volume.mm = 4023;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.volume.vox = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.peak.coord = [9 -55 -53];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.peak.space = {'tal'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.direction = {'+'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.p.comparison = {'<'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.p.val = 0.05;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.p.corr = {'fwe'};
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.stat.t = 4.94;
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.stat.z = [];
DB_2.Imaging{1}.results.fc{1}.seed{1}.connection{8}.condition = {'ADHD > control'};
DB_2.Imaging{1}.summary = {};
DB_2.Imaging{1}.method = {'fMRI'};
DB_2.Topic = {'ADHD'};
