cn_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_cn_bl_left.csv';
cn_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_cn_bl_right.csv';
cn_l_data = buildDataMatrixFromSubjectList(cn_l_file);
cn_r_data = buildDataMatrixFromSubjectList(cn_r_file);

emci_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_emci_bl_left.csv';
emci_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_emci_bl_right.csv';
emci_l_data = buildDataMatrixFromSubjectList(emci_l_file);
emci_r_data = buildDataMatrixFromSubjectList(emci_r_file);

lmci_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_lmci_bl_left.csv';
lmci_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_lmci_bl_right.csv';
lmci_l_data = buildDataMatrixFromSubjectList(lmci_l_file);
lmci_r_data = buildDataMatrixFromSubjectList(lmci_r_file);

ad_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_ad_bl_left.csv';
ad_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_ad_bl_right.csv';
ad_l_data = buildDataMatrixFromSubjectList(ad_l_file);
ad_r_data = buildDataMatrixFromSubjectList(ad_r_file);

[t_h, t_p, t_ci, t_stats] = ttest2(emci_l_data, cn_l_data);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/GROUPD/av45_bl_emci_gt_cn_t_l.txt',t_stats.tstat');
max(t_stats.tstat)
[t_h, t_p, t_ci, t_stats] = ttest2(emci_r_data, cn_r_data);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/GROUPD/av45_bl_emci_gt_cn_t_r.txt',t_stats.tstat');
max(t_stats.tstat)

[t_h, t_p, t_ci, t_stats] = ttest2(lmci_l_data, cn_l_data);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/GROUPD/av45_bl_lmci_gt_cn_t_l.txt',t_stats.tstat');
max(t_stats.tstat)
[t_h, t_p, t_ci, t_stats] = ttest2(lmci_r_data, cn_r_data);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/GROUPD/av45_bl_lmci_gt_cn_t_r.txt',t_stats.tstat');
max(t_stats.tstat)

[t_h, t_p, t_ci, t_stats] = ttest2(ad_l_data, cn_l_data);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/GROUPD/av45_bl_ad_gt_cn_t_l.txt',t_stats.tstat');
max(t_stats.tstat)
[t_h, t_p, t_ci, t_stats] = ttest2(ad_r_data, cn_r_data);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/GROUPD/av45_bl_ad_gt_cn_t_r.txt',t_stats.tstat');
max(t_stats.tstat)

%[t_h, t_p, t_ci, t_stats] = ttest2(ad_l_data, ad_l_data);
%csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/GROUPD/av45_bl_ad_t_l.txt',t_stats.tstat');
%max(t_stats.tstat)
%[t_h, t_p, t_ci, t_stats] = ttest2(ad_r_data, ad_r_data);
%csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/GROUPD/av45_bl_ad_t_r.txt',t_stats.tstat');
%max(t_stats.tstat)