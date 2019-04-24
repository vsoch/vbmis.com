%%
DB_14.Publication.author = {
                            'Liberty S. Hamiltona'
                            'Jennifer G. Levittc'
                            'Joseph O’Neillc'
                            'Jeffry R. Algerb'
                            'Eileen Ludersa'
                            'Owen R. Phillipsa'
                            'Rochelle Caplanc'
                            'Arthur W. Togaa'
                            'James McCrackend'
                            'Katherine L. Narra'
                            }';
%%
DB_14.Publication.page = [1705 1708];
DB_14.Publication.title = {'Reduced white matter integrity in attention-deficit hyperactivity disorder'};
DB_14.Publication.year = 2008;
DB_14.Publication.volume = 19;
DB_14.Publication.keyword = {
                             'corticospinal tract'
                             'diffusion tensor imaging'
                             'fractional anisotropy'
                             'superior longitudinal fasciculus'
                             }';
DB_14.Publication.country = {'USA'};
DB_14.Publication.journal = {'Neuroreport'};
DB_14.Population.group{1}.id = {'ADHD'};
DB_14.Population.group{1}.age.range = [8 15];
DB_14.Population.group{1}.age.stat = [11.96 2.32];
DB_14.Population.group{1}.n = 17;
DB_14.Population.group{1}.med = {
                                 'Concerta:1'
                                 'Ritalin:1'
                                 'Dexadrine:1'
                                 'Adderall:1'
                                 'Straterra:1'
                                 }';
DB_14.Population.group{2}.id = {'control'};
DB_14.Population.group{2}.age.range = [8 15];
DB_14.Population.group{2}.age.stat = [11.72 2.48];
DB_14.Population.group{2}.n = 16;
DB_14.Population.group{2}.med = {''};
DB_14.Population.comparison{1}.ids = [1 2];
DB_14.Population.comparison{1}.name = {'age'};
DB_14.Population.comparison{1}.stat.t = [];
DB_14.Population.comparison{1}.stat.z = [];
DB_14.Population.comparison{1}.p = 0.715;
DB_14.Behavioral = {''};
DB_14.Imaging{1}.task = {''};
DB_14.Imaging{1}.scanner.make = {'Siemens'};
DB_14.Imaging{1}.scanner.model = {'Sonata'};
DB_14.Imaging{1}.scanner.telsa = 1.5;
DB_14.Imaging{1}.results.software.preprocess = {'UCLA Basser'};
DB_14.Imaging{1}.results.software.analysis = {''};
DB_14.Imaging{1}.results.software.statistics = {''};
DB_14.Imaging{1}.results.FA{1}.runs = 4;
DB_14.Imaging{1}.results.FA{1}.directions = 6;
DB_14.Imaging{1}.results.FA{1}.roi = {'corticospinal tract'};
DB_14.Imaging{1}.results.FA{1}.hemisphere = {'bilateral'};
DB_14.Imaging{1}.results.FA{1}.atlas = {'SPM Anatomy Toolbox'};
DB_14.Imaging{1}.results.FA{1}.group.primary = 1;
DB_14.Imaging{1}.results.FA{1}.group.comparison = {'>'};
DB_14.Imaging{1}.results.FA{1}.group.secondary = 2;
DB_14.Imaging{1}.results.FA{1}.regressor.analysis = {};
DB_14.Imaging{1}.results.FA{1}.regressor.statistics = {'age'};
DB_14.Imaging{1}.results.FA{1}.volume.mm = [];
DB_14.Imaging{1}.results.FA{1}.volume.vox = 218;
DB_14.Imaging{1}.results.FA{1}.peak.coord = [18 1 41];
DB_14.Imaging{1}.results.FA{1}.peak.space = {'tal'};
DB_14.Imaging{1}.results.FA{1}.direction = {'-'};
DB_14.Imaging{1}.results.FA{1}.p.comparison = {'='};
DB_14.Imaging{1}.results.FA{1}.p.val = 0.02;
DB_14.Imaging{1}.results.FA{1}.p.corr = {'fwe'};
DB_14.Imaging{1}.results.FA{1}.stat.t = [];
DB_14.Imaging{1}.results.FA{1}.stat.z = [];
DB_14.Imaging{1}.results.FA{1}.stat.F = 6.058;
DB_14.Imaging{1}.results.FA{1}.stat.dof = [1 32];
DB_14.Imaging{1}.results.FA{1}.condition = '';
DB_14.Imaging{1}.results.FA{1}.med.primary = {'off 24 hrs'};
DB_14.Imaging{1}.results.FA{1}.med.secondary = {''};
DB_14.Imaging{1}.results.FA{2}.runs = 4;
DB_14.Imaging{1}.results.FA{2}.directions = 6;
DB_14.Imaging{1}.results.FA{2}.roi = {'superior longitudinal fasciculus'};
DB_14.Imaging{1}.results.FA{2}.hemisphere = {'bilateral'};
DB_14.Imaging{1}.results.FA{2}.atlas = {'SPM Anatomy Toolbox'};
DB_14.Imaging{1}.results.FA{2}.group.primary = 1;
DB_14.Imaging{1}.results.FA{2}.group.comparison = {'>'};
DB_14.Imaging{1}.results.FA{2}.group.secondary = 2;
DB_14.Imaging{1}.results.FA{2}.regressor.analysis = {};
DB_14.Imaging{1}.results.FA{2}.regressor.statistics = {'age'};
DB_14.Imaging{1}.results.FA{2}.volume.mm = [];
DB_14.Imaging{1}.results.FA{2}.volume.vox = 218;
DB_14.Imaging{1}.results.FA{2}.peak.coord = [18 1 41];
DB_14.Imaging{1}.results.FA{2}.peak.space = {'tal'};
DB_14.Imaging{1}.results.FA{2}.direction = {'-'};
DB_14.Imaging{1}.results.FA{2}.p.comparison = {'='};
DB_14.Imaging{1}.results.FA{2}.p.val = 0.017;
DB_14.Imaging{1}.results.FA{2}.p.corr = {'fwe'};
DB_14.Imaging{1}.results.FA{2}.stat.t = [];
DB_14.Imaging{1}.results.FA{2}.stat.z = [];
DB_14.Imaging{1}.results.FA{2}.stat.F = 6.377;
DB_14.Imaging{1}.results.FA{2}.stat.dof = [1 32];
DB_14.Imaging{1}.results.FA{2}.condition = '';
DB_14.Imaging{1}.results.FA{2}.med.primary = {'off 24 hrs'};
DB_14.Imaging{1}.results.FA{2}.med.secondary = {''};
DB_14.Imaging{1}.summary = {''};
DB_14.Imaging{1}.method = {'DTI'};
DB_14.Topic = {'ADHD'};
