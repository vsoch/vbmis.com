DB_13.Publication.author = {
                           'M.R. Asato'
                           'R. Terwilliger'
                           'J. Woo'
                           'B. Luna'
                           }';
DB_13.Publication.page = [2122 2131];
DB_13.Publication.title = {'White Matter Development in Adolescence: A DTI Study'};
DB_13.Publication.year = 2010;
DB_13.Publication.volume = 20;
DB_13.Publication.keyword = {
                            'DTI'
                            'gender'
                            'myelination'
                            'puberty'
                            }';
DB_13.Publication.country = 'USA';
DB_13.Publication.journal = {'Cerebral Cortex'};
DB_13.Population.group{1}.id = {'all'};
DB_13.Population.group{1}.age.range = [8 28];
DB_13.Population.group{1}.age.stat = [15.5 4.49];
DB_13.Population.group{1}.n = 114;
DB_13.Population.group{1}.med = {'none'};
DB_13.Population.group{1}.gender = {'both'};
DB_13.Population.group{2}.id = {'children'};
DB_13.Population.group{2}.age.range = [8 12];
DB_13.Population.group{2}.age.stat = [];
DB_13.Population.group{2}.n = 36;
DB_13.Population.group{2}.med = {'none'};
DB_13.Population.group{2}.gender = {'both'};
DB_13.Population.group{3}.id = {'adolescents'};
DB_13.Population.group{3}.age.range = [13 17];
DB_13.Population.group{3}.age.stat = [];
DB_13.Population.group{3}.n = 45;
DB_13.Population.group{3}.med = {'none'};
DB_13.Population.group{3}.gender = {'both'};
DB_13.Population.group{4}.id = {'adults'};
DB_13.Population.group{4}.age.range = [18 28];
DB_13.Population.group{4}.age.stat = [];
DB_13.Population.group{4}.n = 33;
DB_13.Population.group{4}.med = {'none'};
DB_13.Population.group{4}.gender = {'both'};
DB_13.Behavioral = {};
DB_13.Imaging{1}.task = {''};
DB_13.Imaging{1}.scanner.make = {'Siemens'};
DB_13.Imaging{1}.scanner.model = {'MAGNETOM Allega'};
DB_13.Imaging{1}.scanner.telsa = 3;
DB_13.Imaging{1}.results.software.preprocess = {'FSL'};
DB_13.Imaging{1}.results.software.analysis = {'FSL'};
DB_13.Imaging{1}.results.software.statistics = {'FSL'};
DB_13.Imaging{1}.results.anova{1}.roi = {
                                        'SLF'
                                        'IFOF/ILF'
                                        'Corona Radiata'
                                        'CST'
                                        }';
DB_13.Imaging{1}.results.anova{1}.hemisphere = {'bilateral'};
DB_13.Imaging{1}.results.anova{1}.atlas = {''};
DB_13.Imaging{1}.results.anova{1}.condition{1}.name = {'age'};
DB_13.Imaging{1}.results.anova{1}.condition{1}.types = {
                                                       'childhood'
                                                       'adolescent'
                                                       'adult'
                                                       }';
DB_13.Imaging{1}.results.anova{1}.condition{2}.name = {'sex'};
DB_13.Imaging{1}.results.anova{1}.condition{2}.types = {
                                                       'male'
                                                       'female'
                                                       }';
DB_13.Imaging{1}.results.anova{1}.condition{3}.name = {'puberty group'};
DB_13.Imaging{1}.results.anova{1}.condition{3}.types = {
                                                       'pre/early pubertal'
                                                       'midpubertal'
                                                       'adult maturational/postpubertal'
                                                       }';
DB_13.Imaging{1}.results.anova{1}.regressor.analysis = {};
DB_13.Imaging{1}.results.anova{1}.regressor.statistics = {};
DB_13.Imaging{1}.results.anova{1}.volume.mm = [];
DB_13.Imaging{1}.results.anova{1}.volume.vox = [];
DB_13.Imaging{1}.results.anova{1}.peak.coord = [];
DB_13.Imaging{1}.results.anova{1}.peak.space = '';
DB_13.Imaging{1}.results.anova{1}.direction = {''};
DB_13.Imaging{1}.results.anova{1}.p.comparison = '<';
DB_13.Imaging{1}.results.anova{1}.p.val = 0.054;
DB_13.Imaging{1}.results.anova{1}.p.corr = 'fwe';
DB_13.Imaging{1}.results.anova{1}.stat.f = 3;
DB_13.Imaging{1}.results.anova{1}.stat.dof = [2 98];
DB_13.Imaging{1}.results.anova{1}.contrast = {''};
DB_13.Imaging{1}.results.anova{1}.space = {'mni'};
DB_13.Imaging{1}.results.anova{2}.roi = {
                                        'SLF'
                                        'IFOF/ILF'
                                        'Corona Radiata'
                                        'CST'
                                        }';
DB_13.Imaging{1}.results.anova{2}.hemisphere = {'bilateral'};
DB_13.Imaging{1}.results.anova{2}.atlas = {''};
DB_13.Imaging{1}.results.anova{2}.condition{1}.name = {'age'};
DB_13.Imaging{1}.results.anova{2}.condition{1}.types = {
                                                       'childhood'
                                                       'adolescent'
                                                       'adult'
                                                       }';
DB_13.Imaging{1}.results.anova{2}.regressor.analysis = {};
DB_13.Imaging{1}.results.anova{2}.regressor.statistics = {};
DB_13.Imaging{1}.results.anova{2}.volume.mm = [];
DB_13.Imaging{1}.results.anova{2}.volume.vox = [];
DB_13.Imaging{1}.results.anova{2}.peak.coord = [];
DB_13.Imaging{1}.results.anova{2}.peak.space = '';
DB_13.Imaging{1}.results.anova{2}.direction = {''};
DB_13.Imaging{1}.results.anova{2}.p.comparison = '<';
DB_13.Imaging{1}.results.anova{2}.p.val = 0.05;
DB_13.Imaging{1}.results.anova{2}.p.corr = 'fwe';
DB_13.Imaging{1}.results.anova{2}.stat.f = 3.19;
DB_13.Imaging{1}.results.anova{2}.stat.dof = [2 98];
DB_13.Imaging{1}.results.anova{2}.contrast = {''};
DB_13.Imaging{1}.results.anova{2}.space = {'mni'};
DB_13.Imaging{1}.results.anova{3}.roi = {
                                        'SLF'
                                        'IFOF/ILF'
                                        'Corona Radiata'
                                        'CST'
                                        }';
DB_13.Imaging{1}.results.anova{3}.hemisphere = {'bilateral'};
DB_13.Imaging{1}.results.anova{3}.atlas = {''};
DB_13.Imaging{1}.results.anova{3}.condition{1}.name = {'puberty group'};
DB_13.Imaging{1}.results.anova{3}.condition{1}.types = {
                                                       'pre/early pubertal'
                                                       'midpubertal'
                                                       'adult maturational/postpubertal'
                                                       }';
DB_13.Imaging{1}.results.anova{3}.regressor.analysis = {};
DB_13.Imaging{1}.results.anova{3}.regressor.statistics = {};
DB_13.Imaging{1}.results.anova{3}.volume.mm = [];
DB_13.Imaging{1}.results.anova{3}.volume.vox = [];
DB_13.Imaging{1}.results.anova{3}.peak.coord = [];
DB_13.Imaging{1}.results.anova{3}.peak.space = '';
DB_13.Imaging{1}.results.anova{3}.direction = {''};
DB_13.Imaging{1}.results.anova{3}.p.comparison = '<';
DB_13.Imaging{1}.results.anova{3}.p.val = 0.05;
DB_13.Imaging{1}.results.anova{3}.p.corr = 'fwe';
DB_13.Imaging{1}.results.anova{3}.stat.f = 3.1;
DB_13.Imaging{1}.results.anova{3}.stat.dof = [2 98];
DB_13.Imaging{1}.results.anova{3}.contrast = {''};
DB_13.Imaging{1}.results.anova{3}.space = {'mni'};
DB_13.Imaging{1}.results.anova{4}.roi = {'IFC'};
DB_13.Imaging{1}.results.anova{4}.hemisphere = {'left'};
DB_13.Imaging{1}.results.anova{4}.atlas = {''};
DB_13.Imaging{1}.results.anova{4}.condition{1}.name = {'age'};
DB_13.Imaging{1}.results.anova{4}.condition{1}.types = {
                                                       'childhood'
                                                       'adolescent'
                                                       'adult'
                                                       }';
DB_13.Imaging{1}.results.anova{4}.condition{2}.name = {'sex'};
DB_13.Imaging{1}.results.anova{4}.condition{2}.types = {
                                                       'male'
                                                       'female'
                                                       }';
DB_13.Imaging{1}.results.anova{4}.regressor.analysis = {};
DB_13.Imaging{1}.results.anova{4}.regressor.statistics = {};
DB_13.Imaging{1}.results.anova{4}.volume.mm = [];
DB_13.Imaging{1}.results.anova{4}.volume.vox = [];
DB_13.Imaging{1}.results.anova{4}.peak.coord = [];
DB_13.Imaging{1}.results.anova{4}.peak.space = '';
DB_13.Imaging{1}.results.anova{4}.direction = {''};
DB_13.Imaging{1}.results.anova{4}.p.comparison = '<';
DB_13.Imaging{1}.results.anova{4}.p.val = 0.01;
DB_13.Imaging{1}.results.anova{4}.p.corr = 'fwe';
DB_13.Imaging{1}.results.anova{4}.stat.f = 7.23;
DB_13.Imaging{1}.results.anova{4}.stat.dof = [2 106];
DB_13.Imaging{1}.results.anova{4}.contrast = {''};
DB_13.Imaging{1}.results.anova{4}.space = {'mni'};
DB_13.Imaging{1}.results.anova{5}.roi = {'ATR'};
DB_13.Imaging{1}.results.anova{5}.hemisphere = {'right'};
DB_13.Imaging{1}.results.anova{5}.atlas = {''};
DB_13.Imaging{1}.results.anova{5}.condition{1}.name = {'age'};
DB_13.Imaging{1}.results.anova{5}.condition{1}.types = {
                                                       'childhood'
                                                       'adolescent'
                                                       'adult'
                                                       }';
DB_13.Imaging{1}.results.anova{5}.condition{2}.name = {'sex'};
DB_13.Imaging{1}.results.anova{5}.condition{2}.types = {
                                                       'male'
                                                       'female'
                                                       }';
DB_13.Imaging{1}.results.anova{5}.regressor.analysis = {};
DB_13.Imaging{1}.results.anova{5}.regressor.statistics = {};
DB_13.Imaging{1}.results.anova{5}.volume.mm = [];
DB_13.Imaging{1}.results.anova{5}.volume.vox = [];
DB_13.Imaging{1}.results.anova{5}.peak.coord = [];
DB_13.Imaging{1}.results.anova{5}.peak.space = '';
DB_13.Imaging{1}.results.anova{5}.direction = {''};
DB_13.Imaging{1}.results.anova{5}.p.comparison = '<';
DB_13.Imaging{1}.results.anova{5}.p.val = 0.05;
DB_13.Imaging{1}.results.anova{5}.p.corr = 'fwe';
DB_13.Imaging{1}.results.anova{5}.stat.f = 3.28;
DB_13.Imaging{1}.results.anova{5}.stat.dof = [2 106];
DB_13.Imaging{1}.results.anova{5}.contrast = {''};
DB_13.Imaging{1}.results.anova{5}.space = {'mni'};
DB_13.Imaging{1}.results.RD{1}.dir = 6;
DB_13.Imaging{1}.results.RD{1}.rep = 14;
DB_13.Imaging{1}.results.RD{1}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{1}.tract.name = {
                                            'IFOF'
                                            'ILF'
                                            }';
DB_13.Imaging{1}.results.RD{1}.tract.hemisphere = {
                                                  'left'
                                                  'right'
                                                  }';
DB_13.Imaging{1}.results.RD{1}.tract.type = {'association'};
DB_13.Imaging{1}.results.RD{1}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{1}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{1}.roi.name = {'lateral occipital'};
DB_13.Imaging{1}.results.RD{1}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{1}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{1}.volume.mm = [];
DB_13.Imaging{1}.results.RD{1}.volume.vox = [];
DB_13.Imaging{1}.results.RD{1}.peak.coord = [-35 -73 26];
DB_13.Imaging{1}.results.RD{1}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{1}.direction = {''};
DB_13.Imaging{1}.results.RD{1}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{1}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{1}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{1}.stat.t = 4;
DB_13.Imaging{1}.results.RD{1}.stat.z = [];
DB_13.Imaging{1}.results.RD{1}.pattern = {'maturation by adolescence'};
DB_13.Imaging{1}.results.RD{1}.connection.gm = {
                                               'fronto-occipital'
                                               'temporal occipital'
                                               }';
DB_13.Imaging{1}.results.RD{2}.dir = 6;
DB_13.Imaging{1}.results.RD{2}.rep = 14;
DB_13.Imaging{1}.results.RD{2}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{2}.tract.name = {'SLF frontal'};
DB_13.Imaging{1}.results.RD{2}.tract.hemisphere = {'left'};
DB_13.Imaging{1}.results.RD{2}.tract.type = {'association'};
DB_13.Imaging{1}.results.RD{2}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{2}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{2}.roi.name = {
                                          'medial inferior frontal gyrus'
                                          'precentral gyrus'
                                          }';
DB_13.Imaging{1}.results.RD{2}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{2}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{2}.volume.mm = [];
DB_13.Imaging{1}.results.RD{2}.volume.vox = [];
DB_13.Imaging{1}.results.RD{2}.peak.coord = [-37 -6 28];
DB_13.Imaging{1}.results.RD{2}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{2}.direction = {''};
DB_13.Imaging{1}.results.RD{2}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{2}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{2}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{2}.stat.t = 4;
DB_13.Imaging{1}.results.RD{2}.stat.z = [];
DB_13.Imaging{1}.results.RD{2}.pattern = {'maturation by adolescence'};
DB_13.Imaging{1}.results.RD{2}.connection.gm = {'fronto-temporal'};
DB_13.Imaging{1}.results.RD{3}.dir = 6;
DB_13.Imaging{1}.results.RD{3}.rep = 14;
DB_13.Imaging{1}.results.RD{3}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{3}.tract.name = {'SLF parietal'};
DB_13.Imaging{1}.results.RD{3}.tract.hemisphere = {'right'};
DB_13.Imaging{1}.results.RD{3}.tract.type = {'association'};
DB_13.Imaging{1}.results.RD{3}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{3}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{3}.roi.name = {
                                          'lateral inferior frontal gyrus'
                                          'precentral gyrus'
                                          'medial superior parietal'
                                          }';
DB_13.Imaging{1}.results.RD{3}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{3}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{3}.volume.mm = [];
DB_13.Imaging{1}.results.RD{3}.volume.vox = [];
DB_13.Imaging{1}.results.RD{3}.peak.coord = [24 -37 29];
DB_13.Imaging{1}.results.RD{3}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{3}.direction = {''};
DB_13.Imaging{1}.results.RD{3}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{3}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{3}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{3}.stat.t = 4;
DB_13.Imaging{1}.results.RD{3}.stat.z = [];
DB_13.Imaging{1}.results.RD{3}.pattern = {'maturation by adolescence'};
DB_13.Imaging{1}.results.RD{3}.connection.gm = {''};
DB_13.Imaging{1}.results.RD{4}.dir = 6;
DB_13.Imaging{1}.results.RD{4}.rep = 14;
DB_13.Imaging{1}.results.RD{4}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{4}.tract.name = {'CST'};
DB_13.Imaging{1}.results.RD{4}.tract.hemisphere = {'right'};
DB_13.Imaging{1}.results.RD{4}.tract.type = {'projection'};
DB_13.Imaging{1}.results.RD{4}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{4}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{4}.roi.name = {'upper brain stem'};
DB_13.Imaging{1}.results.RD{4}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{4}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{4}.volume.mm = [];
DB_13.Imaging{1}.results.RD{4}.volume.vox = [];
DB_13.Imaging{1}.results.RD{4}.peak.coord = [-18 -21 -6];
DB_13.Imaging{1}.results.RD{4}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{4}.direction = {''};
DB_13.Imaging{1}.results.RD{4}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{4}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{4}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{4}.stat.t = 4;
DB_13.Imaging{1}.results.RD{4}.stat.z = [];
DB_13.Imaging{1}.results.RD{4}.pattern = {'maturation by adolescence'};
DB_13.Imaging{1}.results.RD{4}.connection.gm = {'fronto-subcortical'};
DB_13.Imaging{1}.results.RD{5}.dir = 6;
DB_13.Imaging{1}.results.RD{5}.rep = 14;
DB_13.Imaging{1}.results.RD{5}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{5}.tract.name = {'CR'};
DB_13.Imaging{1}.results.RD{5}.tract.hemisphere = {'right'};
DB_13.Imaging{1}.results.RD{5}.tract.type = {'projection'};
DB_13.Imaging{1}.results.RD{5}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{5}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{5}.roi.name = {
                                          'inferior frontal gyrus'
                                          'middle frontal gyrus'
                                          }';
DB_13.Imaging{1}.results.RD{5}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{5}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{5}.volume.mm = [];
DB_13.Imaging{1}.results.RD{5}.volume.vox = [];
DB_13.Imaging{1}.results.RD{5}.peak.coord = [-31 17 34];
DB_13.Imaging{1}.results.RD{5}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{5}.direction = {''};
DB_13.Imaging{1}.results.RD{5}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{5}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{5}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{5}.stat.t = 4;
DB_13.Imaging{1}.results.RD{5}.stat.z = [];
DB_13.Imaging{1}.results.RD{5}.pattern = {'maturation by adolescence'};
DB_13.Imaging{1}.results.RD{5}.connection.gm = {'fronto-subcortical'};
DB_13.Imaging{1}.results.RD{6}.dir = 6;
DB_13.Imaging{1}.results.RD{6}.rep = 14;
DB_13.Imaging{1}.results.RD{6}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{6}.tract.name = {'SLF'};
DB_13.Imaging{1}.results.RD{6}.tract.hemisphere = {'right'};
DB_13.Imaging{1}.results.RD{6}.tract.type = {'association'};
DB_13.Imaging{1}.results.RD{6}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{6}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{6}.roi.name = {'inferior frontal gyrus'};
DB_13.Imaging{1}.results.RD{6}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{6}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{6}.volume.mm = [];
DB_13.Imaging{1}.results.RD{6}.volume.vox = [];
DB_13.Imaging{1}.results.RD{6}.peak.coord = [47 10 16];
DB_13.Imaging{1}.results.RD{6}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{6}.direction = {''};
DB_13.Imaging{1}.results.RD{6}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{6}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{6}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{6}.stat.t = 4;
DB_13.Imaging{1}.results.RD{6}.stat.z = [];
DB_13.Imaging{1}.results.RD{6}.pattern = {'still immature in adolescence'};
DB_13.Imaging{1}.results.RD{6}.connection.gm = {'fronto-temporal'};
DB_13.Imaging{1}.results.RD{7}.dir = 6;
DB_13.Imaging{1}.results.RD{7}.rep = 14;
DB_13.Imaging{1}.results.RD{7}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{7}.tract.name = {'UF frontal'};
DB_13.Imaging{1}.results.RD{7}.tract.hemisphere = {'right'};
DB_13.Imaging{1}.results.RD{7}.tract.type = {'association'};
DB_13.Imaging{1}.results.RD{7}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{7}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{7}.roi.name = {
                                          'medial orbitofrontal'
                                          'medial temporal gyrus'
                                          }';
DB_13.Imaging{1}.results.RD{7}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{7}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{7}.volume.mm = [];
DB_13.Imaging{1}.results.RD{7}.volume.vox = [];
DB_13.Imaging{1}.results.RD{7}.peak.coord = [-20 24 -12];
DB_13.Imaging{1}.results.RD{7}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{7}.direction = {''};
DB_13.Imaging{1}.results.RD{7}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{7}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{7}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{7}.stat.t = 4;
DB_13.Imaging{1}.results.RD{7}.stat.z = [];
DB_13.Imaging{1}.results.RD{7}.pattern = {'still immature in adolescence'};
DB_13.Imaging{1}.results.RD{7}.connection.gm = {'fronto-temporal'};
DB_13.Imaging{1}.results.RD{8}.dir = 6;
DB_13.Imaging{1}.results.RD{8}.rep = 14;
DB_13.Imaging{1}.results.RD{8}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{8}.tract.name = {'UF temporal'};
DB_13.Imaging{1}.results.RD{8}.tract.hemisphere = {'right'};
DB_13.Imaging{1}.results.RD{8}.tract.type = {'association'};
DB_13.Imaging{1}.results.RD{8}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{8}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{8}.roi.name = {''};
DB_13.Imaging{1}.results.RD{8}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{8}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{8}.volume.mm = [];
DB_13.Imaging{1}.results.RD{8}.volume.vox = [];
DB_13.Imaging{1}.results.RD{8}.peak.coord = [-44 -14 -19];
DB_13.Imaging{1}.results.RD{8}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{8}.direction = {''};
DB_13.Imaging{1}.results.RD{8}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{8}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{8}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{8}.stat.t = 4;
DB_13.Imaging{1}.results.RD{8}.stat.z = [];
DB_13.Imaging{1}.results.RD{8}.pattern = {'still immature in adolescence'};
DB_13.Imaging{1}.results.RD{8}.connection.gm = {''};
DB_13.Imaging{1}.results.RD{9}.dir = 6;
DB_13.Imaging{1}.results.RD{9}.rep = 14;
DB_13.Imaging{1}.results.RD{9}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{9}.tract.name = {'ATR'};
DB_13.Imaging{1}.results.RD{9}.tract.hemisphere = {'right'};
DB_13.Imaging{1}.results.RD{9}.tract.type = {'projection'};
DB_13.Imaging{1}.results.RD{9}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{9}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{9}.roi.name = {
                                          'inferior frontal gyrus'
                                          'middle frontal gyrus'
                                          'superior frontal gyrus'
                                          }';
DB_13.Imaging{1}.results.RD{9}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{9}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{9}.volume.mm = [];
DB_13.Imaging{1}.results.RD{9}.volume.vox = [];
DB_13.Imaging{1}.results.RD{9}.peak.coord = [28 17 26];
DB_13.Imaging{1}.results.RD{9}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{9}.direction = {''};
DB_13.Imaging{1}.results.RD{9}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{9}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{9}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{9}.stat.t = 4;
DB_13.Imaging{1}.results.RD{9}.stat.z = [];
DB_13.Imaging{1}.results.RD{9}.pattern = {'still immature in adolescence'};
DB_13.Imaging{1}.results.RD{9}.connection.gm = {'corticothalamic'};
DB_13.Imaging{1}.results.RD{10}.dir = 6;
DB_13.Imaging{1}.results.RD{10}.rep = 14;
DB_13.Imaging{1}.results.RD{10}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{10}.tract.name = {'IC'};
DB_13.Imaging{1}.results.RD{10}.tract.hemisphere = {'right'};
DB_13.Imaging{1}.results.RD{10}.tract.type = {'projection'};
DB_13.Imaging{1}.results.RD{10}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{10}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{10}.roi.name = {'genu region'};
DB_13.Imaging{1}.results.RD{10}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{10}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{10}.volume.mm = [];
DB_13.Imaging{1}.results.RD{10}.volume.vox = [];
DB_13.Imaging{1}.results.RD{10}.peak.coord = [-15 5 5];
DB_13.Imaging{1}.results.RD{10}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{10}.direction = {''};
DB_13.Imaging{1}.results.RD{10}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{10}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{10}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{10}.stat.t = 4;
DB_13.Imaging{1}.results.RD{10}.stat.z = [];
DB_13.Imaging{1}.results.RD{10}.pattern = {'still immature in adolescence'};
DB_13.Imaging{1}.results.RD{10}.connection.gm = {'fronto-subcortical'};
DB_13.Imaging{1}.results.RD{11}.dir = 6;
DB_13.Imaging{1}.results.RD{11}.rep = 14;
DB_13.Imaging{1}.results.RD{11}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{11}.tract.name = {'CR'};
DB_13.Imaging{1}.results.RD{11}.tract.hemisphere = {'right'};
DB_13.Imaging{1}.results.RD{11}.tract.type = {'projection'};
DB_13.Imaging{1}.results.RD{11}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{11}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{11}.roi.name = {'central sulcus'};
DB_13.Imaging{1}.results.RD{11}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{11}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{11}.volume.mm = [];
DB_13.Imaging{1}.results.RD{11}.volume.vox = [];
DB_13.Imaging{1}.results.RD{11}.peak.coord = [-34 31 53];
DB_13.Imaging{1}.results.RD{11}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{11}.direction = {''};
DB_13.Imaging{1}.results.RD{11}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{11}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{11}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{11}.stat.t = 4;
DB_13.Imaging{1}.results.RD{11}.stat.z = [];
DB_13.Imaging{1}.results.RD{11}.pattern = {'still immature in adolescence'};
DB_13.Imaging{1}.results.RD{11}.connection.gm = {'parietal-subcortical'};
DB_13.Imaging{1}.results.RD{12}.dir = 6;
DB_13.Imaging{1}.results.RD{12}.rep = 14;
DB_13.Imaging{1}.results.RD{12}.group.id = [2 3 4];
DB_13.Imaging{1}.results.RD{12}.tract.name = {'CC posterior'};
DB_13.Imaging{1}.results.RD{12}.tract.hemisphere = {'right'};
DB_13.Imaging{1}.results.RD{12}.tract.type = {'interhemispheric'};
DB_13.Imaging{1}.results.RD{12}.regressor.analysis = {''};
DB_13.Imaging{1}.results.RD{12}.regressor.statistics = {'age'};
DB_13.Imaging{1}.results.RD{12}.roi.name = {'central sulcus'};
DB_13.Imaging{1}.results.RD{12}.roi.atlas = {''};
DB_13.Imaging{1}.results.RD{12}.roi.hemisphere = {''};
DB_13.Imaging{1}.results.RD{12}.volume.mm = [];
DB_13.Imaging{1}.results.RD{12}.volume.vox = [];
DB_13.Imaging{1}.results.RD{12}.peak.coord = [-16 -13 34];
DB_13.Imaging{1}.results.RD{12}.peak.space = {'mni'};
DB_13.Imaging{1}.results.RD{12}.direction = {''};
DB_13.Imaging{1}.results.RD{12}.p.comparison = {'<'};
DB_13.Imaging{1}.results.RD{12}.p.val = 0.001;
DB_13.Imaging{1}.results.RD{12}.p.corr = {'fwe'};
DB_13.Imaging{1}.results.RD{12}.stat.t = 4;
DB_13.Imaging{1}.results.RD{12}.stat.z = [];
DB_13.Imaging{1}.results.RD{12}.pattern = {'still immature in adolescence'};
DB_13.Imaging{1}.results.RD{12}.connection.gm = {
                                                'frontal-parietal'
                                                'interhemispheric'
                                                }';
DB_13.Imaging{1}.summary = {''};
DB_13.Imaging{1}.method = {'DTI'};
DB_13.Topic = {'WM DEVEL'};