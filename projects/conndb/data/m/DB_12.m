DB_12.Publication.author = {
                              'Timothy J. Silk'
                              'Alasdair Vance'
                              'Nicole Rinehart'
                              'John L. Bradshaw'
                              'Ross Cunnington'
                              }';
DB_12.Publication.page = [2757 2765];
DB_12.Publication.title = {'White-Matter Abnormalities in Attention Deficit Hyperactivity Disorder: A Diffusion Tensor Imaging Study'};
DB_12.Publication.year = 2009;
DB_12.Publication.volume = 30;
DB_12.Publication.keyword = {
                               'ADHD'
                               'fractional anisotropy'
                               'TBSS'
                               'diffusion tensor imaging'
                               }';
DB_12.Publication.country = 'Australia';
DB_12.Publication.journal = {'Human Brain Mapping'};
DB_12.Population.group{1}.id = {'ADHD'};
DB_12.Population.group{1}.age.range = [8 18];
DB_12.Population.group{1}.age.stat = [12.6 2.4];
DB_12.Population.group{1}.n = 15;
DB_12.Population.group{1}.med = {
                                   'medication nave:12'
                                   'medication withdrawn:3'
                                   }';
DB_12.Population.group{2}.id = {'control'};
DB_12.Population.group{2}.age.range = [8 18];
DB_12.Population.group{2}.age.stat = [12.9 2.6];
DB_12.Population.group{2}.n = 15;
DB_12.Population.group{2}.med = {'none'};
DB_12.Population.comparison{1}.ids = [1 2];
DB_12.Population.comparison{1}.name = {'age'};
DB_12.Population.comparison{1}.stat.t = 0.386;
DB_12.Population.comparison{1}.stat.z = [];
DB_12.Population.comparison{1}.p = 0.715;
DB_12.Behavioral = {};
DB_12.Imaging{1}.task = {''};
DB_12.Imaging{1}.scanner.make = {'GE'};
DB_12.Imaging{1}.scanner.model = {'Signa'};
DB_12.Imaging{1}.scanner.telsa = 3;
DB_12.Imaging{1}.results.software.preprocess = {'FSL'};
DB_12.Imaging{1}.results.software.analysis = {'FSL'};
DB_12.Imaging{1}.results.software.statistics = {
                                                  'FSL'
                                                  'SPSS'
                                                  }';
DB_12.Imaging{1}.results.FA{1}.runs = 1;
DB_12.Imaging{1}.results.FA{1}.directions = 28;
DB_12.Imaging{1}.results.FA{1}.roi = {
                                        'inferior frontal striatal'
                                        'uncinate fasiculus'
                                        }';
DB_12.Imaging{1}.results.FA{1}.hemisphere = {'left'};
DB_12.Imaging{1}.results.FA{1}.atlas = {'aal'};
DB_12.Imaging{1}.results.FA{1}.group.primary = 1;
DB_12.Imaging{1}.results.FA{1}.group.comparison = {'>'};
DB_12.Imaging{1}.results.FA{1}.group.secondary = 2;
DB_12.Imaging{1}.results.FA{1}.regressor.analysis = {};
DB_12.Imaging{1}.results.FA{1}.regressor.statistics = {};
DB_12.Imaging{1}.results.FA{1}.volume.mm = [];
DB_12.Imaging{1}.results.FA{1}.volume.vox = 168;
DB_12.Imaging{1}.results.FA{1}.peak.coord = [-21 10 -24];
DB_12.Imaging{1}.results.FA{1}.peak.space = {'mni'};
DB_12.Imaging{1}.results.FA{1}.direction = {''};
DB_12.Imaging{1}.results.FA{1}.p.comparison = {'<'};
DB_12.Imaging{1}.results.FA{1}.p.val = 0.03;
DB_12.Imaging{1}.results.FA{1}.p.corr = {'fwe'};
DB_12.Imaging{1}.results.FA{1}.stat.t = [];
DB_12.Imaging{1}.results.FA{1}.stat.z = [];
DB_12.Imaging{1}.results.FA{1}.condition = {''};
DB_12.Imaging{1}.results.FA{2}.runs = 1;
DB_12.Imaging{1}.results.FA{2}.directions = 28;
DB_12.Imaging{1}.results.FA{2}.roi = {
                                        'occipito-parietal region'
                                        'cingulum'
                                        }';
DB_12.Imaging{1}.results.FA{2}.hemisphere = {'right'};
DB_12.Imaging{1}.results.FA{2}.atlas = {'aal'};
DB_12.Imaging{1}.results.FA{2}.group.primary = 1;
DB_12.Imaging{1}.results.FA{2}.group.comparison = {'>'};
DB_12.Imaging{1}.results.FA{2}.group.secondary = 2;
DB_12.Imaging{1}.results.FA{2}.regressor.analysis = {};
DB_12.Imaging{1}.results.FA{2}.regressor.statistics = {};
DB_12.Imaging{1}.results.FA{2}.volume.mm = [];
DB_12.Imaging{1}.results.FA{2}.volume.vox = 245;
DB_12.Imaging{1}.results.FA{2}.peak.coord = [8 -76 10];
DB_12.Imaging{1}.results.FA{2}.peak.space = {'mni'};
DB_12.Imaging{1}.results.FA{2}.direction = {''};
DB_12.Imaging{1}.results.FA{2}.p.comparison = {'<'};
DB_12.Imaging{1}.results.FA{2}.p.val = 0.01;
DB_12.Imaging{1}.results.FA{2}.p.corr = {'fwe'};
DB_12.Imaging{1}.results.FA{2}.stat.t = 3.85;
DB_12.Imaging{1}.results.FA{2}.stat.z = [];
DB_12.Imaging{1}.results.FA{2}.condition = {''};
DB_12.Imaging{1}.results.FA{3}.runs = 1;
DB_12.Imaging{1}.results.FA{3}.directions = 28;
DB_12.Imaging{1}.results.FA{3}.roi = {
                                        'inferior temporal region'
                                        'inferior longitudinal fasciculus'
                                        }';
DB_12.Imaging{1}.results.FA{3}.hemisphere = {'left'};
DB_12.Imaging{1}.results.FA{3}.atlas = {'aal'};
DB_12.Imaging{1}.results.FA{3}.group.primary = 1;
DB_12.Imaging{1}.results.FA{3}.group.comparison = {'>'};
DB_12.Imaging{1}.results.FA{3}.group.secondary = 2;
DB_12.Imaging{1}.results.FA{3}.regressor.analysis = {};
DB_12.Imaging{1}.results.FA{3}.regressor.statistics = {};
DB_12.Imaging{1}.results.FA{3}.volume.mm = [];
DB_12.Imaging{1}.results.FA{3}.volume.vox = 156;
DB_12.Imaging{1}.results.FA{3}.peak.coord = [-40 -21 -35];
DB_12.Imaging{1}.results.FA{3}.peak.space = {'mni'};
DB_12.Imaging{1}.results.FA{3}.direction = {''};
DB_12.Imaging{1}.results.FA{3}.p.comparison = {'<'};
DB_12.Imaging{1}.results.FA{3}.p.val = 0.04;
DB_12.Imaging{1}.results.FA{3}.p.corr = {'fwe'};
DB_12.Imaging{1}.results.FA{3}.stat.t = 3.85;
DB_12.Imaging{1}.results.FA{3}.stat.z = [];
DB_12.Imaging{1}.results.FA{3}.condition = {''};
DB_12.Imaging{1}.results.MD{1}.group{1}.L = [1 1188.2 63.2
                                               2 887.3 47
                                               3 749.3 48.5];
DB_12.Imaging{1}.results.MD{1}.group{1}.med = {''};
DB_12.Imaging{1}.results.MD{1}.group{1}.name = 1;
DB_12.Imaging{1}.results.MD{1}.group{2}.name = 2;
DB_12.Imaging{1}.results.MD{1}.group{2}.L = [1 1241.3 70.7
                                               2 820.5 48.1
                                               3 646.1 64.1];
DB_12.Imaging{1}.results.MD{1}.group{2}.med = {''};
DB_12.Imaging{1}.results.MD{1}.comparison{1}.name = {'>'};
DB_12.Imaging{1}.results.MD{1}.comparison{1}.stat.t = [];
DB_12.Imaging{1}.results.MD{1}.comparison{1}.stat.z = [];
DB_12.Imaging{1}.results.MD{1}.comparison{1}.p.comparison = {'<'};
DB_12.Imaging{1}.results.MD{1}.comparison{1}.p.val = 0.05;
DB_12.Imaging{1}.results.MD{1}.comparison{2}.name = {'>'};
DB_12.Imaging{1}.results.MD{1}.comparison{2}.stat.t = [];
DB_12.Imaging{1}.results.MD{1}.comparison{2}.stat.z = [];
DB_12.Imaging{1}.results.MD{1}.comparison{2}.p.comparison = {'<'};
DB_12.Imaging{1}.results.MD{1}.comparison{2}.p.val = 0.001;
DB_12.Imaging{1}.results.MD{1}.comparison{3}.name = {'>'};
DB_12.Imaging{1}.results.MD{1}.comparison{3}.stat.t = [];
DB_12.Imaging{1}.results.MD{1}.comparison{3}.stat.z = [];
DB_12.Imaging{1}.results.MD{1}.comparison{3}.p.comparison = {'<'};
DB_12.Imaging{1}.results.MD{1}.comparison{3}.p.val = 0.001;
DB_12.Imaging{1}.results.MD{1}.regressor.analysis = {};
DB_12.Imaging{1}.results.MD{1}.regressor.statistics = {};
DB_12.Imaging{1}.results.MD{1}.volume.mm = [];
DB_12.Imaging{1}.results.MD{1}.volume.vox = [];
DB_12.Imaging{1}.results.MD{1}.peak.coord = [];
DB_12.Imaging{1}.results.MD{1}.peak.space = {'mni'};
DB_12.Imaging{1}.results.MD{1}.direction = {''};
DB_12.Imaging{1}.results.MD{1}.p.comparison = {''};
DB_12.Imaging{1}.results.MD{1}.p.val = [];
DB_12.Imaging{1}.results.MD{1}.p.corr = {'fwe'};
DB_12.Imaging{1}.results.MD{1}.stat.t = [];
DB_12.Imaging{1}.results.MD{1}.stat.z = [];
DB_12.Imaging{1}.results.MD{1}.condition = {''};
DB_12.Imaging{1}.results.MD{1}.runs = 1;
DB_12.Imaging{1}.results.MD{1}.directions = 28;
DB_12.Imaging{1}.results.MD{1}.roi = {'occipito-parietal region'};
DB_12.Imaging{1}.results.MD{1}.hemisphere = {'right'};
DB_12.Imaging{1}.results.MD{1}.FAkey = 2;
DB_12.Imaging{1}.results.MD{1}.atlas = {''};
DB_12.Imaging{1}.results.MD{2}.group{1}.name = 2;
DB_12.Imaging{1}.results.MD{2}.group{1}.med = {''};
DB_12.Imaging{1}.results.MD{2}.group{1}.L = [1 1213.5 69.3];
DB_12.Imaging{1}.results.MD{2}.group{2}.name = 1;
DB_12.Imaging{1}.results.MD{2}.group{2}.med = {''};
DB_12.Imaging{1}.results.MD{2}.group{2}.L = [1 1134.6 33.5];
DB_12.Imaging{1}.results.MD{2}.comparison{1}.name = {'>'};
DB_12.Imaging{1}.results.MD{2}.comparison{1}.stat.t = [];
DB_12.Imaging{1}.results.MD{2}.comparison{1}.stat.z = [];
DB_12.Imaging{1}.results.MD{2}.comparison{1}.p.comparison = {'<'};
DB_12.Imaging{1}.results.MD{2}.comparison{1}.p.val = 0.001;
DB_12.Imaging{1}.results.MD{2}.regressor.analysis = {};
DB_12.Imaging{1}.results.MD{2}.regressor.statistics = {};
DB_12.Imaging{1}.results.MD{2}.volume.mm = [];
DB_12.Imaging{1}.results.MD{2}.volume.vox = [];
DB_12.Imaging{1}.results.MD{2}.peak.coord = [];
DB_12.Imaging{1}.results.MD{2}.peak.space = {'mni'};
DB_12.Imaging{1}.results.MD{2}.direction = {''};
DB_12.Imaging{1}.results.MD{2}.p.comparison = {''};
DB_12.Imaging{1}.results.MD{2}.p.val = [];
DB_12.Imaging{1}.results.MD{2}.p.corr = {'fwe'};
DB_12.Imaging{1}.results.MD{2}.stat.t = [];
DB_12.Imaging{1}.results.MD{2}.stat.z = [];
DB_12.Imaging{1}.results.MD{2}.condition = {''};
DB_12.Imaging{1}.results.MD{2}.runs = 1;
DB_12.Imaging{1}.results.MD{2}.directions = 28;
DB_12.Imaging{1}.results.MD{2}.roi = {
                                        'inferior frontal'
                                        'striatum'
                                        }';
DB_12.Imaging{1}.results.MD{2}.hemisphere = {'left'};
DB_12.Imaging{1}.results.MD{2}.FAkey = 1;
DB_12.Imaging{1}.results.MD{2}.atlas = {''};
DB_12.Imaging{1}.results.MD{3}.group{1}.name = 2;
DB_12.Imaging{1}.results.MD{3}.group{1}.med = {''};
DB_12.Imaging{1}.results.MD{3}.group{1}.L = [1 1187.5 80.6
                                               3 668.5 75];
DB_12.Imaging{1}.results.MD{3}.group{2}.name = 1;
DB_12.Imaging{1}.results.MD{3}.group{2}.med = {''};
                                           
DB_12.Imaging{1}.results.MD{3}.group{2}.L = [1 1112 47
                                               3 738.6 82.5];
DB_12.Imaging{1}.results.MD{3}.comparison{1}.name = {'>'};
DB_12.Imaging{1}.results.MD{3}.comparison{1}.stat.t = [];
DB_12.Imaging{1}.results.MD{3}.comparison{1}.stat.z = [];
DB_12.Imaging{1}.results.MD{3}.comparison{1}.p.comparison = {'<'};
DB_12.Imaging{1}.results.MD{3}.comparison{1}.p.val = 0.05;
DB_12.Imaging{1}.results.MD{3}.comparison{2}.name = {''};
DB_12.Imaging{1}.results.MD{3}.comparison{3}.name = {'>'};
DB_12.Imaging{1}.results.MD{3}.comparison{3}.stat.t = [];
DB_12.Imaging{1}.results.MD{3}.comparison{3}.stat.z = [];
DB_12.Imaging{1}.results.MD{3}.comparison{3}.p.comparison = {'<'};
DB_12.Imaging{1}.results.MD{3}.comparison{3}.p.val = 0.05;
DB_12.Imaging{1}.results.MD{3}.regressor.analysis = {};
DB_12.Imaging{1}.results.MD{3}.regressor.statistics = {};
DB_12.Imaging{1}.results.MD{3}.volume.mm = [];
DB_12.Imaging{1}.results.MD{3}.volume.vox = [];
DB_12.Imaging{1}.results.MD{3}.peak.coord = [];
DB_12.Imaging{1}.results.MD{3}.peak.space = {'mni'};
DB_12.Imaging{1}.results.MD{3}.direction = {''};
DB_12.Imaging{1}.results.MD{3}.p.comparison = {''};
DB_12.Imaging{1}.results.MD{3}.p.val = [];
DB_12.Imaging{1}.results.MD{3}.p.corr = {'fwe'};
DB_12.Imaging{1}.results.MD{3}.stat.t = [];
DB_12.Imaging{1}.results.MD{3}.stat.z = [];
DB_12.Imaging{1}.results.MD{3}.condition = {''};
DB_12.Imaging{1}.results.MD{3}.runs = 1;
DB_12.Imaging{1}.results.MD{3}.directions = 28;
DB_12.Imaging{1}.results.MD{3}.roi = {'occipito-parietal region'};
DB_12.Imaging{1}.results.MD{3}.hemisphere = {'right'};
DB_12.Imaging{1}.results.MD{3}.FAkey = 3;
DB_12.Imaging{1}.results.MD{3}.atlas = {''};
DB_12.Imaging{1}.results.MD{4}.group{1}.name = 2;
DB_12.Imaging{1}.results.MD{4}.group{1}.med = {''};
DB_12.Imaging{1}.results.MD{4}.group{1}.L = [1 1295.8 133.1
                                               2 801.9 61.3
                                               3 536.7 63];
DB_12.Imaging{1}.results.MD{4}.group{2}.name = 1;
DB_12.Imaging{1}.results.MD{4}.group{2}.med = {''};
DB_12.Imaging{1}.results.MD{4}.group{2}.L = [1 1166.4 57
                                               2 870.3 57.1
                                               3 680.4 92.5];
DB_12.Imaging{1}.results.MD{4}.comparison{1}.name = {'>'};
DB_12.Imaging{1}.results.MD{4}.comparison{1}.stat.t = [];
DB_12.Imaging{1}.results.MD{4}.comparison{1}.stat.z = [];
DB_12.Imaging{1}.results.MD{4}.comparison{1}.p.comparison = {'<'};
DB_12.Imaging{1}.results.MD{4}.comparison{1}.p.val = 0.005;
DB_12.Imaging{1}.results.MD{4}.comparison{2}.name = {'>'};
DB_12.Imaging{1}.results.MD{4}.comparison{2}.stat.t = [];
DB_12.Imaging{1}.results.MD{4}.comparison{2}.stat.z = [];
DB_12.Imaging{1}.results.MD{4}.comparison{2}.p.comparison = {'<'};
DB_12.Imaging{1}.results.MD{4}.comparison{2}.p.val = 0.005;
DB_12.Imaging{1}.results.MD{4}.comparison{3}.name = {'>'};
DB_12.Imaging{1}.results.MD{4}.comparison{3}.stat.t = [];
DB_12.Imaging{1}.results.MD{4}.comparison{3}.stat.z = [];
DB_12.Imaging{1}.results.MD{4}.comparison{3}.p.comparison = {'<'};
DB_12.Imaging{1}.results.MD{4}.comparison{3}.p.val = 0.001;
DB_12.Imaging{1}.results.MD{4}.regressor.analysis = {};
DB_12.Imaging{1}.results.MD{4}.regressor.statistics = {};
DB_12.Imaging{1}.results.MD{4}.volume.mm = [];
DB_12.Imaging{1}.results.MD{4}.volume.vox = [];
DB_12.Imaging{1}.results.MD{4}.peak.coord = [];
DB_12.Imaging{1}.results.MD{4}.peak.space = {'mni'};
DB_12.Imaging{1}.results.MD{4}.direction = {''};
DB_12.Imaging{1}.results.MD{4}.p.comparison = {''};
DB_12.Imaging{1}.results.MD{4}.p.val = [];
DB_12.Imaging{1}.results.MD{4}.p.corr = {'fwe'};
DB_12.Imaging{1}.results.MD{4}.stat.t = [];
DB_12.Imaging{1}.results.MD{4}.stat.z = [];
DB_12.Imaging{1}.results.MD{4}.condition = {''};
DB_12.Imaging{1}.results.MD{4}.runs = 1;
DB_12.Imaging{1}.results.MD{4}.directions = 28;
DB_12.Imaging{1}.results.MD{4}.roi = {'inferior parietal region'};
DB_12.Imaging{1}.results.MD{4}.hemisphere = {'right'};
DB_12.Imaging{1}.results.MD{4}.FAkey = [];
DB_12.Imaging{1}.results.MD{4}.atlas = {''};
DB_12.Imaging{1}.results.MD{5}.group{1}.name = 2;
DB_12.Imaging{1}.results.MD{5}.group{1}.med = {''};
DB_12.Imaging{1}.results.MD{5}.group{1}.L = [3 716.9 87.4];
DB_12.Imaging{1}.results.MD{5}.group{2}.name = 1;
DB_12.Imaging{1}.results.MD{5}.group{2}.med = {''};
DB_12.Imaging{1}.results.MD{5}.group{2}.L = [3 779.2 77.9];
DB_12.Imaging{1}.results.MD{5}.comparison{1}.name = {''};
DB_12.Imaging{1}.results.MD{5}.comparison{2}.name = {''};
DB_12.Imaging{1}.results.MD{5}.comparison{3}.name = {'>'};
DB_12.Imaging{1}.results.MD{5}.comparison{3}.stat.t = [];
DB_12.Imaging{1}.results.MD{5}.comparison{3}.stat.z = [];
DB_12.Imaging{1}.results.MD{5}.comparison{3}.p.comparison = {'<'};
DB_12.Imaging{1}.results.MD{5}.comparison{3}.p.val = 0.05;
DB_12.Imaging{1}.results.MD{5}.regressor.analysis = {};
DB_12.Imaging{1}.results.MD{5}.regressor.statistics = {};
DB_12.Imaging{1}.results.MD{5}.volume.mm = [];
DB_12.Imaging{1}.results.MD{5}.volume.vox = [];
DB_12.Imaging{1}.results.MD{5}.peak.coord = [];
DB_12.Imaging{1}.results.MD{5}.peak.space = {'mni'};
DB_12.Imaging{1}.results.MD{5}.direction = {''};
DB_12.Imaging{1}.results.MD{5}.p.comparison = {''};
DB_12.Imaging{1}.results.MD{5}.p.val = [];
DB_12.Imaging{1}.results.MD{5}.p.corr = {'fwe'};
DB_12.Imaging{1}.results.MD{5}.stat.t = [];
DB_12.Imaging{1}.results.MD{5}.stat.z = [];
DB_12.Imaging{1}.results.MD{5}.condition = {''};
DB_12.Imaging{1}.results.MD{5}.runs = 1;
DB_12.Imaging{1}.results.MD{5}.directions = 28;
DB_12.Imaging{1}.results.MD{5}.roi = {'inferior frontal region'};
DB_12.Imaging{1}.results.MD{5}.hemisphere = {'left'};
DB_12.Imaging{1}.results.MD{5}.FAkey = [];
DB_12.Imaging{1}.results.MD{5}.atlas = {''};
DB_12.Imaging{1}.summary = {''};
DB_12.Imaging{1}.method = {'DTI'};
DB_12.Topic = {'ADHD'};