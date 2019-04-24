%%
DB_3.Publication.author = {
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
DB_3.Publication.page = [638 649];
DB_3.Publication.title = 'Altered Small-World Brain Functional Networks in Children With Attention-Deficit/Hyperactivity Disorder';
DB_3.Publication.year = 2009;
DB_3.Publication.volume = 30;
DB_3.Publication.keyword = {
                            'fMRI'
                            'ICA'
                            'connectivity'
                            'efficiency'
                            'networks'
                            'rest'
                            'small-world'
                            }';
DB_3.Publication.country = {'China'};
DB_3.Publication.journal = {'Human Brain Mapping'};
DB_3.Population.group{1}.id = {'ADHD'};
DB_3.Population.group{1}.age.range = [11 15];
DB_3.Population.group{1}.age.stat = [13.59 1.52];
DB_3.Population.group{1}.n = [19 19 0];
DB_3.Population.group{1}.med = {''};
DB_3.Population.group{2}.id = {'control'};
DB_3.Population.group{2}.age.range = [11 15];
DB_3.Population.group{2}.age.stat = [13.32 0.97];
DB_3.Population.group{2}.n = [20 20 0];
DB_3.Population.group{2}.med = {'none'};
DB_3.Population.comparison{1}.ids = [1 2];
DB_3.Population.comparison{1}.name = {'age'};
DB_3.Population.comparison{1}.stat.t = -0.66;
DB_3.Population.comparison{1}.stat.z = [];
DB_3.Population.comparison{1}.p = 0.516;
DB_3.Behavioral{1}.measure{1}.name = {'IQ'};
DB_3.Behavioral{1}.measure{1}.version = {''};
DB_3.Behavioral{1}.measure{1}.cogpo = [];
DB_3.Behavioral{1}.measure{1}.results{1}.subscale = {'total'};
DB_3.Behavioral{1}.measure{1}.results{1}.group{1}.name = 1;
DB_3.Behavioral{1}.measure{1}.results{1}.group{1}.mean = 102.59;
DB_3.Behavioral{1}.measure{1}.results{1}.group{1}.SD = 8.62;
DB_3.Behavioral{1}.measure{1}.results{1}.group{2}.name = 2;
DB_3.Behavioral{1}.measure{1}.results{1}.group{2}.mean = 115.25;
DB_3.Behavioral{1}.measure{1}.results{1}.group{2}.SD = 11.85;
DB_3.Behavioral{1}.measure{1}.results{1}.comparison{1}.name = {'>'};
DB_3.Behavioral{1}.measure{1}.results{1}.comparison{1}.stat.t = 3.66;
DB_3.Behavioral{1}.measure{1}.results{1}.comparison{1}.stat.z = [];
DB_3.Behavioral{1}.measure{1}.results{1}.comparison{1}.p.comparison = {'<'};
DB_3.Behavioral{1}.measure{1}.results{1}.comparison{1}.p.val = 0.001;
DB_3.Imaging{1}.task = {'rest'};
DB_3.Imaging{1}.scanner.make = {'Siemens'};
DB_3.Imaging{1}.scanner.model = {'Trio'};
DB_3.Imaging{1}.scanner.telsa = 3;
DB_3.Imaging{1}.results.software.preprocess = {
                                               'SPM5'
                                               'AFNI'
                                               }';
DB_3.Imaging{1}.results.software.analysis = {'MATLAB'};
DB_3.Imaging{1}.results.software.statistics = {'MATLAB'};
DB_3.Imaging{1}.results.fc{1}.group.primary = 1;
DB_3.Imaging{1}.results.fc{1}.group.comparison = {'>'};
DB_3.Imaging{1}.results.fc{1}.group.secondary = 2;
DB_3.Imaging{1}.results.fc{1}.regressor.analysis = {
                                                    '6 motion parameters'
                                                    'global brain activity'
                                                    }';
DB_3.Imaging{1}.results.fc{1}.regressor.statistics = {};
DB_3.Imaging{1}.results.fc{1}.seed{1}.hemisphere = {'right'};
DB_3.Imaging{1}.results.fc{1}.seed{1}.name = {'medial orbitofrontal cortex'};
DB_3.Imaging{1}.results.fc{1}.seed{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.hemisphere = {'bilateral'};
%%
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.name = {
                                                            'PreCG'
                                                            'LING'
                                                            'SFGdor'
                                                            'SOG'
                                                            'ORBsup'
                                                            'MOG'
                                                            'MFG'
                                                            'IOG'
                                                            'ORBmid'
                                                            'FFG'
                                                            'IFGoperc'
                                                            'PoCG'
                                                            'IFGtriang'
                                                            'ORBinf'
                                                            'IPL'
                                                            'ROL'
                                                            'SMG'
                                                            'SMA'
                                                            'ANG'
                                                            'OLF'
                                                            'PCUN'
                                                            'SFGmed'
                                                            'PCL'
                                                            'ORBmed'
                                                            'CAU'
                                                            'REC'
                                                            'PUT'
                                                            'INS'
                                                            'PAL'
                                                            'ACG'
                                                            'THA'
                                                            'MCG'
                                                            'HES'
                                                            'PCG'
                                                            'STG'
                                                            'HIP'
                                                            'TPOsup'
                                                            'PHG'
                                                            'MTG'
                                                            'AMYG'
                                                            'TPOmid'
                                                            'CAL'
                                                            'ITG'
                                                            'CUN'
                                                            }';
%%
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.volume.mm = [];
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.volume.vox = [];
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.peak.coord = [];
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.peak.space = {'tal'};
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.direction = {'-'};
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.p.comparison = {'='};
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.p.val = 0.001;
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.p.corr = {'none'};
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.stat.t = 3.41;
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.stat.z = [];
DB_3.Imaging{1}.results.fc{1}.seed{1}.connection{1}.condition = {'ADHD < control'};
DB_3.Imaging{1}.results.fc{1}.seed{2}.hemisphere = {'right'};
DB_3.Imaging{1}.results.fc{1}.seed{2}.name = {'rectus gyrus'};
DB_3.Imaging{1}.results.fc{1}.seed{2}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.hemisphere = {'bilateral'};
%%
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.name = {
                                                            'PreCG'
                                                            'LING'
                                                            'SFGdor'
                                                            'SOG'
                                                            'ORBsup'
                                                            'MOG'
                                                            'MFG'
                                                            'IOG'
                                                            'ORBmid'
                                                            'FFG'
                                                            'IFGoperc'
                                                            'PoCG'
                                                            'IFGtriang'
                                                            'ORBinf'
                                                            'IPL'
                                                            'ROL'
                                                            'SMG'
                                                            'SMA'
                                                            'ANG'
                                                            'OLF'
                                                            'PCUN'
                                                            'SFGmed'
                                                            'PCL'
                                                            'ORBmed'
                                                            'CAU'
                                                            'REC'
                                                            'PUT'
                                                            'INS'
                                                            'PAL'
                                                            'ACG'
                                                            'THA'
                                                            'MCG'
                                                            'HES'
                                                            'PCG'
                                                            'STG'
                                                            'HIP'
                                                            'TPOsup'
                                                            'PHG'
                                                            'MTG'
                                                            'AMYG'
                                                            'TPOmid'
                                                            'CAL'
                                                            'ITG'
                                                            'CUN'
                                                            }';
%%
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.volume.mm = [];
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.volume.vox = [];
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.peak.coord = [];
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.peak.space = {'tal'};
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.direction = {'-'};
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.p.comparison = {'='};
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.p.val = 0.022;
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.p.corr = {'none'};
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.stat.t = 2.38;
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.stat.z = [];
DB_3.Imaging{1}.results.fc{1}.seed{2}.connection{1}.condition = {'ADHD < control'};
DB_3.Imaging{1}.results.fc{1}.seed{3}.hemisphere = {'right'};
DB_3.Imaging{1}.results.fc{1}.seed{3}.name = {'lingual gyrus'};
DB_3.Imaging{1}.results.fc{1}.seed{3}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.hemisphere = {'bilateral'};
%%
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.name = {
                                                            'PreCG'
                                                            'LING'
                                                            'SFGdor'
                                                            'SOG'
                                                            'ORBsup'
                                                            'MOG'
                                                            'MFG'
                                                            'IOG'
                                                            'ORBmid'
                                                            'FFG'
                                                            'IFGoperc'
                                                            'PoCG'
                                                            'IFGtriang'
                                                            'ORBinf'
                                                            'IPL'
                                                            'ROL'
                                                            'SMG'
                                                            'SMA'
                                                            'ANG'
                                                            'OLF'
                                                            'PCUN'
                                                            'SFGmed'
                                                            'PCL'
                                                            'ORBmed'
                                                            'CAU'
                                                            'REC'
                                                            'PUT'
                                                            'INS'
                                                            'PAL'
                                                            'ACG'
                                                            'THA'
                                                            'MCG'
                                                            'HES'
                                                            'PCG'
                                                            'STG'
                                                            'HIP'
                                                            'TPOsup'
                                                            'PHG'
                                                            'MTG'
                                                            'AMYG'
                                                            'TPOmid'
                                                            'CAL'
                                                            'ITG'
                                                            'CUN'
                                                            }';
%%
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.volume.mm = [];
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.volume.vox = [];
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.peak.coord = [];
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.peak.space = {'tal'};
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.direction = {'-'};
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.p.comparison = {'='};
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.p.val = 0.035;
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.p.corr = {'none'};
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.stat.t = 2.18;
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.stat.z = [];
DB_3.Imaging{1}.results.fc{1}.seed{3}.connection{1}.condition = {'ADHD < control'};
DB_3.Imaging{1}.results.fc{1}.seed{4}.hemisphere = {'right'};
DB_3.Imaging{1}.results.fc{1}.seed{4}.name = {'calcarine cortex'};
DB_3.Imaging{1}.results.fc{1}.seed{4}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.hemisphere = {'bilateral'};
%%
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.name = {
                                                            'PreCG'
                                                            'LING'
                                                            'SFGdor'
                                                            'SOG'
                                                            'ORBsup'
                                                            'MOG'
                                                            'MFG'
                                                            'IOG'
                                                            'ORBmid'
                                                            'FFG'
                                                            'IFGoperc'
                                                            'PoCG'
                                                            'IFGtriang'
                                                            'ORBinf'
                                                            'IPL'
                                                            'ROL'
                                                            'SMG'
                                                            'SMA'
                                                            'ANG'
                                                            'OLF'
                                                            'PCUN'
                                                            'SFGmed'
                                                            'PCL'
                                                            'ORBmed'
                                                            'CAU'
                                                            'REC'
                                                            'PUT'
                                                            'INS'
                                                            'PAL'
                                                            'ACG'
                                                            'THA'
                                                            'MCG'
                                                            'HES'
                                                            'PCG'
                                                            'STG'
                                                            'HIP'
                                                            'TPOsup'
                                                            'PHG'
                                                            'MTG'
                                                            'AMYG'
                                                            'TPOmid'
                                                            'CAL'
                                                            'ITG'
                                                            'CUN'
                                                            }';
%%
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.volume.mm = [];
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.volume.vox = [];
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.peak.coord = [];
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.peak.space = {'tal'};
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.direction = {'-'};
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.p.comparison = {'='};
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.p.val = 0.042;
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.p.corr = {'none'};
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.stat.t = 2.1;
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.stat.z = [];
DB_3.Imaging{1}.results.fc{1}.seed{4}.connection{1}.condition = {'ADHD < control'};
DB_3.Imaging{1}.results.fc{1}.seed{5}.hemisphere = {'right'};
DB_3.Imaging{1}.results.fc{1}.seed{5}.name = {'middle temporal gyrus'};
DB_3.Imaging{1}.results.fc{1}.seed{5}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.hemisphere = {'bilateral'};
%%
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.name = {
                                                            'PreCG'
                                                            'LING'
                                                            'SFGdor'
                                                            'SOG'
                                                            'ORBsup'
                                                            'MOG'
                                                            'MFG'
                                                            'IOG'
                                                            'ORBmid'
                                                            'FFG'
                                                            'IFGoperc'
                                                            'PoCG'
                                                            'IFGtriang'
                                                            'ORBinf'
                                                            'IPL'
                                                            'ROL'
                                                            'SMG'
                                                            'SMA'
                                                            'ANG'
                                                            'OLF'
                                                            'PCUN'
                                                            'SFGmed'
                                                            'PCL'
                                                            'ORBmed'
                                                            'CAU'
                                                            'REC'
                                                            'PUT'
                                                            'INS'
                                                            'PAL'
                                                            'ACG'
                                                            'THA'
                                                            'MCG'
                                                            'HES'
                                                            'PCG'
                                                            'STG'
                                                            'HIP'
                                                            'TPOsup'
                                                            'PHG'
                                                            'MTG'
                                                            'AMYG'
                                                            'TPOmid'
                                                            'CAL'
                                                            'ITG'
                                                            'CUN'
                                                            }';
%%
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.volume.mm = [];
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.volume.vox = [];
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.peak.coord = [];
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.peak.space = {'tal'};
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.direction = {'-'};
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.p.comparison = {'='};
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.p.val = 0.023;
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.p.corr = {'none'};
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.stat.t = 2.37;
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.stat.z = [];
DB_3.Imaging{1}.results.fc{1}.seed{5}.connection{1}.condition = {'ADHD < control'};
DB_3.Imaging{1}.results.fc{1}.seed{6}.hemisphere = {'right'};
DB_3.Imaging{1}.results.fc{1}.seed{6}.name = {'middle temporal gyrus'};
DB_3.Imaging{1}.results.fc{1}.seed{6}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.hemisphere = {'bilateral'};
%%
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.name = {
                                                            'PreCG'
                                                            'LING'
                                                            'SFGdor'
                                                            'SOG'
                                                            'ORBsup'
                                                            'MOG'
                                                            'MFG'
                                                            'IOG'
                                                            'ORBmid'
                                                            'FFG'
                                                            'IFGoperc'
                                                            'PoCG'
                                                            'IFGtriang'
                                                            'ORBinf'
                                                            'IPL'
                                                            'ROL'
                                                            'SMG'
                                                            'SMA'
                                                            'ANG'
                                                            'OLF'
                                                            'PCUN'
                                                            'SFGmed'
                                                            'PCL'
                                                            'ORBmed'
                                                            'CAU'
                                                            'REC'
                                                            'PUT'
                                                            'INS'
                                                            'PAL'
                                                            'ACG'
                                                            'THA'
                                                            'MCG'
                                                            'HES'
                                                            'PCG'
                                                            'STG'
                                                            'HIP'
                                                            'TPOsup'
                                                            'PHG'
                                                            'MTG'
                                                            'AMYG'
                                                            'TPOmid'
                                                            'CAL'
                                                            'ITG'
                                                            'CUN'
                                                            }';
%%
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.volume.mm = [];
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.volume.vox = [];
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.peak.coord = [];
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.peak.space = {'tal'};
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.direction = {'-'};
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.p.comparison = {'='};
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.p.val = 0.037;
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.p.corr = {'none'};
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.stat.t = 2.16;
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.stat.z = [];
DB_3.Imaging{1}.results.fc{1}.seed{6}.connection{1}.condition = {'ADHD < control'};
DB_3.Imaging{1}.results.fc{1}.seed{7}.hemisphere = {'right'};
DB_3.Imaging{1}.results.fc{1}.seed{7}.name = {'inferior temporal gyrus'};
DB_3.Imaging{1}.results.fc{1}.seed{7}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.hemisphere = {'bilateral'};
%%
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.name = {
                                                            'PreCG'
                                                            'LING'
                                                            'SFGdor'
                                                            'SOG'
                                                            'ORBsup'
                                                            'MOG'
                                                            'MFG'
                                                            'IOG'
                                                            'ORBmid'
                                                            'FFG'
                                                            'IFGoperc'
                                                            'PoCG'
                                                            'IFGtriang'
                                                            'ORBinf'
                                                            'IPL'
                                                            'ROL'
                                                            'SMG'
                                                            'SMA'
                                                            'ANG'
                                                            'OLF'
                                                            'PCUN'
                                                            'SFGmed'
                                                            'PCL'
                                                            'ORBmed'
                                                            'CAU'
                                                            'REC'
                                                            'PUT'
                                                            'INS'
                                                            'PAL'
                                                            'ACG'
                                                            'THA'
                                                            'MCG'
                                                            'HES'
                                                            'PCG'
                                                            'STG'
                                                            'HIP'
                                                            'TPOsup'
                                                            'PHG'
                                                            'MTG'
                                                            'AMYG'
                                                            'TPOmid'
                                                            'CAL'
                                                            'ITG'
                                                            'CUN'
                                                            }';
%%
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.volume.mm = [];
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.volume.vox = [];
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.peak.coord = [];
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.peak.space = {'tal'};
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.direction = {'-'};
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.p.comparison = {'='};
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.p.val = 0.032;
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.p.corr = {'none'};
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.stat.t = 2.24;
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.stat.z = [];
DB_3.Imaging{1}.results.fc{1}.seed{7}.connection{1}.condition = {'ADHD < control'};
DB_3.Imaging{1}.results.fc{1}.seed{8}.hemisphere = {'right'};
DB_3.Imaging{1}.results.fc{1}.seed{8}.name = {'middle temporal pole'};
DB_3.Imaging{1}.results.fc{1}.seed{8}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.hemisphere = {'bilateral'};
%%
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.name = {
                                                            'PreCG'
                                                            'LING'
                                                            'SFGdor'
                                                            'SOG'
                                                            'ORBsup'
                                                            'MOG'
                                                            'MFG'
                                                            'IOG'
                                                            'ORBmid'
                                                            'FFG'
                                                            'IFGoperc'
                                                            'PoCG'
                                                            'IFGtriang'
                                                            'ORBinf'
                                                            'IPL'
                                                            'ROL'
                                                            'SMG'
                                                            'SMA'
                                                            'ANG'
                                                            'OLF'
                                                            'PCUN'
                                                            'SFGmed'
                                                            'PCL'
                                                            'ORBmed'
                                                            'CAU'
                                                            'REC'
                                                            'PUT'
                                                            'INS'
                                                            'PAL'
                                                            'ACG'
                                                            'THA'
                                                            'MCG'
                                                            'HES'
                                                            'PCG'
                                                            'STG'
                                                            'HIP'
                                                            'TPOsup'
                                                            'PHG'
                                                            'MTG'
                                                            'AMYG'
                                                            'TPOmid'
                                                            'CAL'
                                                            'ITG'
                                                            'CUN'
                                                            }';
%%
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.volume.mm = [];
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.volume.vox = [];
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.peak.coord = [];
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.peak.space = {'tal'};
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.direction = {'-'};
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.p.comparison = {'='};
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.p.val = 0.033;
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.p.corr = {'none'};
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.stat.t = 2.22;
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.stat.z = [];
DB_3.Imaging{1}.results.fc{1}.seed{8}.connection{1}.condition = {'ADHD < control'};
DB_3.Imaging{1}.results.fc{1}.seed{9}.hemisphere = {'right'};
DB_3.Imaging{1}.results.fc{1}.seed{9}.name = {'inferior frontal gyrus'};
DB_3.Imaging{1}.results.fc{1}.seed{9}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.hemisphere = {'bilateral'};
%%
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.name = {
                                                            'PreCG'
                                                            'LING'
                                                            'SFGdor'
                                                            'SOG'
                                                            'ORBsup'
                                                            'MOG'
                                                            'MFG'
                                                            'IOG'
                                                            'ORBmid'
                                                            'FFG'
                                                            'IFGoperc'
                                                            'PoCG'
                                                            'IFGtriang'
                                                            'ORBinf'
                                                            'IPL'
                                                            'ROL'
                                                            'SMG'
                                                            'SMA'
                                                            'ANG'
                                                            'OLF'
                                                            'PCUN'
                                                            'SFGmed'
                                                            'PCL'
                                                            'ORBmed'
                                                            'CAU'
                                                            'REC'
                                                            'PUT'
                                                            'INS'
                                                            'PAL'
                                                            'ACG'
                                                            'THA'
                                                            'MCG'
                                                            'HES'
                                                            'PCG'
                                                            'STG'
                                                            'HIP'
                                                            'TPOsup'
                                                            'PHG'
                                                            'MTG'
                                                            'AMYG'
                                                            'TPOmid'
                                                            'CAL'
                                                            'ITG'
                                                            'CUN'
                                                            }';
%%
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.volume.mm = [];
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.volume.vox = [];
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.peak.coord = [];
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.peak.space = {'tal'};
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.direction = {'+'};
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.p.comparison = {'='};
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.p.val = 0.002;
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.p.corr = {'none'};
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.stat.t = -3.26;
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.stat.z = [];
DB_3.Imaging{1}.results.fc{1}.seed{9}.connection{1}.condition = {'ADHD < control'};
DB_3.Imaging{1}.results.fc{1}.seed{10}.hemisphere = {'right'};
DB_3.Imaging{1}.results.fc{1}.seed{10}.name = {'triangle'};
DB_3.Imaging{1}.results.fc{1}.seed{10}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.hemisphere = {'bilateral'};
%%
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.name = {
                                                            'PreCG'
                                                            'LING'
                                                            'SFGdor'
                                                            'SOG'
                                                            'ORBsup'
                                                            'MOG'
                                                            'MFG'
                                                            'IOG'
                                                            'ORBmid'
                                                            'FFG'
                                                            'IFGoperc'
                                                            'PoCG'
                                                            'IFGtriang'
                                                            'ORBinf'
                                                            'IPL'
                                                            'ROL'
                                                            'SMG'
                                                            'SMA'
                                                            'ANG'
                                                            'OLF'
                                                            'PCUN'
                                                            'SFGmed'
                                                            'PCL'
                                                            'ORBmed'
                                                            'CAU'
                                                            'REC'
                                                            'PUT'
                                                            'INS'
                                                            'PAL'
                                                            'ACG'
                                                            'THA'
                                                            'MCG'
                                                            'HES'
                                                            'PCG'
                                                            'STG'
                                                            'HIP'
                                                            'TPOsup'
                                                            'PHG'
                                                            'MTG'
                                                            'AMYG'
                                                            'TPOmid'
                                                            'CAL'
                                                            'ITG'
                                                            'CUN'
                                                             }';
%%
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.volume.mm = [];
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.volume.vox = [];
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.peak.coord = [];
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.peak.space = {'tal'};
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.direction = {'+'};
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.p.comparison = {'='};
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.p.val = 0.014;
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.p.corr = {'none'};
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.stat.t = -2.57;
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.stat.z = [];
DB_3.Imaging{1}.results.fc{1}.seed{10}.connection{1}.condition = {'ADHD < control'};
DB_3.Imaging{1}.results.fc{1}.seed{11}.hemisphere = {'right'};
DB_3.Imaging{1}.results.fc{1}.seed{11}.name = {'pallidum'};
DB_3.Imaging{1}.results.fc{1}.seed{11}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.hemisphere = {'bilateral'};
%%
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.name = {
                                                            'PreCG'
                                                            'LING'
                                                            'SFGdor'
                                                            'SOG'
                                                            'ORBsup'
                                                            'MOG'
                                                            'MFG'
                                                            'IOG'
                                                            'ORBmid'
                                                            'FFG'
                                                            'IFGoperc'
                                                            'PoCG'
                                                            'IFGtriang'
                                                            'ORBinf'
                                                            'IPL'
                                                            'ROL'
                                                            'SMG'
                                                            'SMA'
                                                            'ANG'
                                                            'OLF'
                                                            'PCUN'
                                                            'SFGmed'
                                                            'PCL'
                                                            'ORBmed'
                                                            'CAU'
                                                            'REC'
                                                            'PUT'
                                                            'INS'
                                                            'PAL'
                                                            'ACG'
                                                            'THA'
                                                            'MCG'
                                                            'HES'
                                                            'PCG'
                                                            'STG'
                                                            'HIP'
                                                            'TPOsup'
                                                            'PHG'
                                                            'MTG'
                                                            'AMYG'
                                                            'TPOmid'
                                                            'CAL'
                                                            'ITG'
                                                            'CUN'
                                                             }';
%%
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.atlas = {'aal'};
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.volume.mm = [];
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.volume.vox = [];
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.peak.coord = [];
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.peak.space = {'tal'};
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.direction = {'+'};
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.p.comparison = {'='};
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.p.val = 0.038;
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.p.corr = {'none'};
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.stat.t = -2.16;
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.stat.z = [];
DB_3.Imaging{1}.results.fc{1}.seed{11}.connection{1}.condition = {'ADHD < control'};
DB_3.Imaging{1}.summary = {''};
DB_3.Imaging{1}.method = {'fMRI'};
DB_3.Topic = {'ADHD'};
