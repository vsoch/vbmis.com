DB_1.Publication.author = {
                           'Xiaohua Caoa'
                           'Qingjiu Caoa'
                           'Xiangyu Longc'
                           'Li Suna'
                           }';
DB_1.Publication.page = [198 206];
DB_1.Publication.title = 'Abnormal resting-state functional connectivity patterns of the putamen in medication-naïve children with attention deficit hyperactivity disorder';
DB_1.Publication.year = 2009;
DB_1.Publication.volume = 1303;
DB_1.Publication.keyword = {
                            'ADHD'
                            'fMRI'
                            'Resting state'
                            'Functional connectivity'
                            'Putamen'
                            }';
DB_1.Publication.country = {'China'};
DB_1.Publication.journal = {'Brain Research'};
DB_1.Population.group{1}.id = {'ADHD'};
DB_1.Population.group{1}.age.range = [11 16];
DB_1.Population.group{1}.age.stat = [13.3 1.4];
DB_1.Population.group{1}.n = [19 19 0];
DB_1.Population.group{1}.med = {'naive'};
DB_1.Population.group{2}.id = {'control'};
DB_1.Population.group{2}.age.range = [11 16];
DB_1.Population.group{2}.age.stat = [13.2 1];
DB_1.Population.group{2}.n = [23 23 0];
DB_1.Population.group{2}.med = {'none'};
DB_1.Population.comparison{1}.ids = [1 2];
DB_1.Population.comparison{1}.name = {'age'};
DB_1.Population.comparison{1}.stat.t = 0.22;
DB_1.Population.comparison{1}.stat.z = [];
DB_1.Population.comparison{1}.p = 0.827;
DB_1.Behavioral{1}.measure{1}.name = {'ADHD-RS'};
DB_1.Behavioral{1}.measure{1}.version = {'IV'};
DB_1.Behavioral{1}.measure{1}.cogpo = [];
DB_1.Behavioral{1}.measure{1}.results{1}.subscale = {'total'};
DB_1.Behavioral{1}.measure{1}.results{1}.group{1}.name = 1;
DB_1.Behavioral{1}.measure{1}.results{1}.group{1}.mean = 50.3;
DB_1.Behavioral{1}.measure{1}.results{1}.group{1}.SD = 9.2;
DB_1.Behavioral{1}.measure{1}.results{1}.group{2}.name = 2;
DB_1.Behavioral{1}.measure{1}.results{1}.group{2}.mean = 28.3;
DB_1.Behavioral{1}.measure{1}.results{1}.group{2}.SD = 6.1;
DB_1.Behavioral{1}.measure{1}.results{1}.comparison{1}.name = {'>'};
DB_1.Behavioral{1}.measure{1}.results{1}.comparison{1}.stat.t = 8.972;
DB_1.Behavioral{1}.measure{1}.results{1}.comparison{1}.stat.z = [];
DB_1.Behavioral{1}.measure{1}.results{1}.comparison{1}.p.comparison = {'<'};
DB_1.Behavioral{1}.measure{1}.results{1}.comparison{1}.p.val = 0.001;
DB_1.Behavioral{1}.measure{1}.results{2}.subscale = {'inattention'};
DB_1.Behavioral{1}.measure{1}.results{2}.group{1}.name = 1;
DB_1.Behavioral{1}.measure{1}.results{2}.group{1}.mean = 27.7;
DB_1.Behavioral{1}.measure{1}.results{2}.group{1}.SD = 4.3;
DB_1.Behavioral{1}.measure{1}.results{2}.group{2}.name = 2;
DB_1.Behavioral{1}.measure{1}.results{2}.group{2}.mean = 15.9;
DB_1.Behavioral{1}.measure{1}.results{2}.group{2}.SD = 4.6;
DB_1.Behavioral{1}.measure{1}.results{2}.comparison{1}.name = {'>'};
DB_1.Behavioral{1}.measure{1}.results{2}.comparison{1}.stat.t = 8.573;
DB_1.Behavioral{1}.measure{1}.results{2}.comparison{1}.stat.z = [];
DB_1.Behavioral{1}.measure{1}.results{2}.comparison{1}.p.comparison = {'<'};
DB_1.Behavioral{1}.measure{1}.results{2}.comparison{1}.p.val = 0.001;
DB_1.Behavioral{1}.measure{1}.results{3}.subscale = {'hyperactivity/impulsivity'};
DB_1.Behavioral{1}.measure{1}.results{3}.group{1}.mean = 22.6;
DB_1.Behavioral{1}.measure{1}.results{3}.group{1}.SD = 6.4;
DB_1.Behavioral{1}.measure{1}.results{3}.group{2}.mean = 12.4;
DB_1.Behavioral{1}.measure{1}.results{3}.group{2}.SD = 2.1;
DB_1.Behavioral{1}.measure{1}.results{3}.comparison{1}.name = {'>'};
DB_1.Behavioral{1}.measure{1}.results{3}.comparison{1}.stat.t = 7.315;
DB_1.Behavioral{1}.measure{1}.results{3}.comparison{1}.stat.z = [];
DB_1.Behavioral{1}.measure{1}.results{3}.comparison{1}.p.comparison = {'<'};
DB_1.Behavioral{1}.measure{1}.results{3}.comparison{1}.p.val = 0.001;
DB_1.Behavioral{1}.measure{2}.name = {'IQ'};
DB_1.Behavioral{1}.measure{2}.version = {''};
DB_1.Behavioral{1}.measure{2}.cogpo = [];
DB_1.Behavioral{1}.measure{2}.results{1}.subscale = {'total'};
DB_1.Behavioral{1}.measure{2}.results{1}.group{1}.name = 1;
DB_1.Behavioral{1}.measure{2}.results{1}.group{1}.mean = 102.7;
DB_1.Behavioral{1}.measure{2}.results{1}.group{1}.SD = 10.4;
DB_1.Behavioral{1}.measure{2}.results{1}.group{2}.name = 2;
DB_1.Behavioral{1}.measure{2}.results{1}.group{2}.mean = 113.5;
DB_1.Behavioral{1}.measure{2}.results{1}.group{2}.SD = 11.4;
DB_1.Behavioral{1}.measure{2}.results{1}.comparison{1}.name = {'>'};
DB_1.Behavioral{1}.measure{2}.results{1}.comparison{1}.stat.t = -2.976;
DB_1.Behavioral{1}.measure{2}.results{1}.comparison{1}.stat.z = [];
DB_1.Behavioral{1}.measure{2}.results{1}.comparison{1}.p.comparison = '=';
DB_1.Behavioral{1}.measure{2}.results{1}.comparison{1}.p.val = 0.005;
DB_1.Imaging{1}.task = {'rest'};
DB_1.Imaging{1}.scanner.make = {'Siemens'};
DB_1.Imaging{1}.scanner.model = {'Trio'};
DB_1.Imaging{1}.scanner.telsa = 3;
DB_1.Imaging{1}.results.software.preprocess = {'SPM5'};
DB_1.Imaging{1}.results.software.analysis = {'AFNI'};
DB_1.Imaging{1}.results.software.statistics = {'rest'};
DB_1.Imaging{1}.results.fc{1}.group.primary = 1;
DB_1.Imaging{1}.results.fc{1}.group.comparison = {'>'};
DB_1.Imaging{1}.results.fc{1}.group.secondary = 2;
DB_1.Imaging{1}.results.fc{1}.regressor.analysis = {
                                                    'global trend'
                                                    'WM'
                                                    'CSF'
                                                    '6 motion parameters'
                                                    }';
DB_1.Imaging{1}.results.fc{1}.regressor.statistics = {'IQ'};
DB_1.Imaging{1}.results.fc{1}.seed{1}.hemisphere = 'left';
DB_1.Imaging{1}.results.fc{1}.seed{1}.name = {'putamen'};
DB_1.Imaging{1}.results.fc{1}.seed{1}.atlas = {'aal'};
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.hemisphere = {'right'};
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.name = {
                                                            'globus pallidus'
                                                            'thalamus'
                                                            }';
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.atlas = {''};
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.volume.mm = 243;
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.volume.vox = [];
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.peak.coord = [20 -14 2];
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.peak.space = {'tal'};
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.direction = {'+'};
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.p.comparison = {'<'};
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.p.val = 0.05;
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.p.corr = {'fwe'};
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.stat.t = 3.372;
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.stat.z = [];
DB_1.Imaging{1}.results.fc{1}.seed{1}.connection{1}.condition = {'ADHD > control'};
DB_1.Imaging{1}.results.fc{2}.group.primary = 1;
DB_1.Imaging{1}.results.fc{2}.group.comparison = {'<'};
DB_1.Imaging{1}.results.fc{2}.group.secondary = 2;
DB_1.Imaging{1}.results.fc{2}.regressor.analysis = {
                                                    'global trend'
                                                    'WM'
                                                    'CSF'
                                                    '6 motion parameters'
                                                    }';
DB_1.Imaging{1}.results.fc{2}.regressor.statistics = {'IQ'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.hemisphere = {'left'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.name = {'putamen'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.atlas = {'aal'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.hemisphere = {};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.name = {
                                                            'subcallosal gyrus'
                                                            'nucleus accumbens'
                                                            }';
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.atlas = '';
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.volume.mm = 351;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.volume.vox = [];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.peak.coord = [10 4 -10];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.peak.space = {'tal'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.direction = {'+'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.p.comparison = {'<'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.p.val = 0.05;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.p.corr = {'fwe'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.stat.t = -3.602;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.stat.z = [];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{1}.condition = {'ADHD < control'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.hemisphere = {''};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.name = {'superior frontal gyrus'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.atlas = '';
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.volume.mm = 243;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.volume.vox = [];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.peak.coord = [8 2 66];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.peak.space = {'tal'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.direction = {'+'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.p.comparison = {'<'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.p.val = 0.05;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.p.corr = {'fwe'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.stat.t = -3.678;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.stat.z = [];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{2}.condition = {'ADHD < control'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.hemisphere = {''};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.name = {'declive'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.atlas = {''};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.volume.mm = 459;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.volume.vox = [];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.peak.coord = [22 -70 -18];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.peak.space = {'tal'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.direction = {'-'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.p.comparison = {'<'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.p.val = 0.05;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.p.corr = {'fwe'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.stat.t = 3.133;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.stat.z = [];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{3}.condition = {'ADHD < control'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.hemisphere = {};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.name = {
                                                            'superior temporal gyrus'
                                                            'middle temporal gyrus'
                                                            }';
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.atlas = '';
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.volume.mm = 351;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.volume.vox = [];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.peak.coord = [38 -56 18];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.peak.space = {'tal'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.direction = {'-'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.p.comparison = {'<'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.p.val = 0.05;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.p.corr = {'fwe'};
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.stat.t = 3.288;
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.stat.z = [];
DB_1.Imaging{1}.results.fc{2}.seed{1}.connection{4}.condition = {'ADHD < control'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.hemisphere = {'right'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.name = {'putamen'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.atlas = {'aal'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.hemisphere = {''};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.name = {'precuneus'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.atlas = {''};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.volume.mm = 513;
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.volume.vox = [];
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.peak.coord = [14 -64 -44];
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.peak.space = {'tal'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.direction = {'+'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.p.comparison = {'<'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.p.val = 0.05;
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.p.corr = {'fwe'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.stat.t = 3.11;
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.stat.z = [];
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{1}.condition = {'ADHD < control'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.hemisphere = {};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.name = {'declive'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.atlas = {''};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.volume.mm = 270;
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.volume.vox = [];
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.peak.coord = [-14 -76 -22];
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.peak.space = {'tal'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.direction = {'+'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.p.comparison = {'<'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.p.val = 0.05;
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.p.corr = {'fwe'};
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.stat.t = 3.209;
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.stat.z = [];
DB_1.Imaging{1}.results.fc{2}.seed{2}.connection{2}.condition = {'ADHD < control'};
DB_1.Imaging{1}.summary = {'abnormal functional relationships between the putamenandthecortical–striatal–thalamic circuits as well as the default mode networkmay underlie the pathological basis of ADHD'};
DB_1.Imaging{1}.method = {'fMRI'};
DB_1.Topic = {'ADHD'};