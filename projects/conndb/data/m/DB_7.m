%%
DB_7.Publication.author = {
                           'C.Z. Zhu'
                           'Y.F. Zang'
                           'M. Liang'
                           'L.X. Tian'
                           'Y. He1'
                           'X.B. Li'
                           'M.Q. Sui'
                           'Y.F. Wang'
                           'T. Z. Jiang'
                           }';
%%
DB_7.Publication.page = [468 475];
DB_7.Publication.title = {'Discriminative Analysis of Brain Function at Resting-State for Attention-Deficit/Hyperactivity Disorder'};
DB_7.Publication.year = 2005;
DB_7.Publication.volume = 3750;
DB_7.Publication.keyword = {
                            'ADHD'
                            'DTI'
                            'WM'
                            'children'
                            'MRI'
                            }';
DB_7.Publication.country = 'China';
DB_7.Publication.journal = {'LNCS'};
DB_7.Population.group{1}.id = {'ADHD'};
DB_7.Population.group{1}.age.range = [11 15];
DB_7.Population.group{1}.age.stat = [];
DB_7.Population.group{1}.n = [9];
DB_7.Population.group{1}.med = {''};
DB_7.Population.group{2}.id = {'control'};
DB_7.Population.group{2}.age.range = [11 15];
DB_7.Population.group{2}.age.stat = [];
DB_7.Population.group{2}.n = [11];
DB_7.Population.group{2}.med = {'none'};
DB_7.Behavioral = {};
DB_7.Imaging{1}.task = {''};
DB_7.Imaging{1}.scanner.make = {'Siemens'};
DB_7.Imaging{1}.scanner.model = {'Trio'};
DB_7.Imaging{1}.scanner.telsa = 3;
DB_7.Imaging{1}.results.software.preprocess = {'SPM2'};
DB_7.Imaging{1}.results.software.analysis = {};
DB_7.Imaging{1}.results.software.statistics = {};
DB_7.Imaging{1}.results.FDA{1}.volume.mm = [];
DB_7.Imaging{1}.results.FDA{1}.volume.vox = [];
DB_7.Imaging{1}.results.FDA{1}.peak.coord = [];
DB_7.Imaging{1}.results.FDA{1}.peak.space = {''};
DB_7.Imaging{1}.results.FDA{1}.direction = {''};
DB_7.Imaging{1}.results.FDA{1}.p.comparison = {''};
DB_7.Imaging{1}.results.FDA{1}.p.val = [];
DB_7.Imaging{1}.results.FDA{1}.p.corr = {''};
DB_7.Imaging{1}.results.FDA{1}.stat.t = [];
DB_7.Imaging{1}.results.FDA{1}.stat.z = [];
DB_7.Imaging{1}.results.FDA{1}.condition = {''};
DB_7.Imaging{1}.results.FDA{1}.model{1}.name = {'ReHo'};
DB_7.Imaging{1}.results.FDA{1}.model{1}.type = {'func'};
DB_7.Imaging{1}.results.FDA{1}.model{1}.training.rate.correct = 1;
DB_7.Imaging{1}.results.FDA{1}.model{1}.LOO.group{1}.id = [1 2];
DB_7.Imaging{1}.results.FDA{1}.model{1}.LOO.group{1}.rate.correct = 0.85;
DB_7.Imaging{1}.results.FDA{1}.model{1}.LOO.group{2}.id = [2];
DB_7.Imaging{1}.results.FDA{1}.model{1}.LOO.group{2}.rate.correct = 0.91;
DB_7.Imaging{1}.results.FDA{1}.model{1}.LOO.group{3}.id = [1];
DB_7.Imaging{1}.results.FDA{1}.model{1}.LOO.group{3}.rate.correct = 0.78;
DB_7.Imaging{1}.results.FDA{1}.model{1}.regressor.analysis = {};
DB_7.Imaging{1}.results.FDA{1}.model{1}.regressor.statistics = {};
DB_7.Imaging{1}.results.FDA{1}.model{1}.comparison = {'outperformed SVM and Batch Perceptron'};
DB_7.Imaging{1}.results.FDA{1}.model{2}.name = {'intensity'};
DB_7.Imaging{1}.results.FDA{1}.model{2}.type = {'struc'};
DB_7.Imaging{1}.results.FDA{1}.model{2}.training.rate.correct = 1;
DB_7.Imaging{1}.results.FDA{1}.model{2}.LOO.group{1}.id = [1 2];
DB_7.Imaging{1}.results.FDA{1}.model{2}.LOO.group{1}.rate.correct = 0.53;
DB_7.Imaging{1}.results.FDA{1}.model{2}.LOO.group{2}.id = [2];
DB_7.Imaging{1}.results.FDA{1}.model{2}.LOO.group{2}.rate.correct = 0.38;
DB_7.Imaging{1}.results.FDA{1}.model{2}.LOO.group{3}.id = [1];
DB_7.Imaging{1}.results.FDA{1}.model{2}.LOO.group{3}.rate.correct = 0.67;
DB_7.Imaging{1}.results.FDA{1}.model{2}.regressor.analysis = {};
DB_7.Imaging{1}.results.FDA{1}.model{2}.regressor.statistics = {};
DB_7.Imaging{1}.results.FDA{1}.model{2}.comparison = {''};
DB_7.Imaging{1}.results.FDA{1}.model{3}.name = {'morphology'};
DB_7.Imaging{1}.results.FDA{1}.model{3}.type = {'struc'};
DB_7.Imaging{1}.results.FDA{1}.model{3}.training.rate.correct = 1;
DB_7.Imaging{1}.results.FDA{1}.model{3}.LOO.group{1}.id = [1 2];
DB_7.Imaging{1}.results.FDA{1}.model{3}.LOO.group{1}.rate.correct = 0.53;
DB_7.Imaging{1}.results.FDA{1}.model{3}.LOO.group{2}.id = [2];
DB_7.Imaging{1}.results.FDA{1}.model{3}.LOO.group{2}.rate.correct = 0.5;
DB_7.Imaging{1}.results.FDA{1}.model{3}.LOO.group{3}.id = [1];
DB_7.Imaging{1}.results.FDA{1}.model{3}.LOO.group{3}.rate.correct = 0.56;
DB_7.Imaging{1}.results.FDA{1}.model{3}.regressor.analysis = {};
DB_7.Imaging{1}.results.FDA{1}.model{3}.regressor.statistics = {};
DB_7.Imaging{1}.results.FDA{1}.model{3}.comparison = {''};
DB_7.Imaging{1}.results.FDA{1}.roi = {
                                      'prefrontal cortex'
                                      'anterior cingulate cortex'
                                      }';
DB_7.Imaging{1}.summary = {'Multivariate pattern classification for ReHo values assessed by fMRI'};
DB_7.Imaging{1}.method = {'fMRI'};
DB_7.Topic = {'ADHD'};