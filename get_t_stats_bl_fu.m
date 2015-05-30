cn_l_file_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_cn_bl_left.csv';
cn_r_file_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_cn_bl_right.csv';
cn_l_data_bl = buildDataMatrixFromSubjectList(cn_l_file_bl);
cn_r_data_bl = buildDataMatrixFromSubjectList(cn_r_file_bl);

emci_l_file_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_emci_bl_left.csv';
emci_r_file_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_emci_bl_right.csv';
emci_l_data_bl = buildDataMatrixFromSubjectList(emci_l_file_bl);
emci_r_data_bl = buildDataMatrixFromSubjectList(emci_r_file_bl);

lmci_l_file_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_lmci_bl_left.csv';
lmci_r_file_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_lmci_bl_right.csv';
lmci_l_data_bl = buildDataMatrixFromSubjectList(lmci_l_file_bl);
lmci_r_data_bl = buildDataMatrixFromSubjectList(lmci_r_file_bl);

ad_l_file_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_ad_bl_left.csv';
ad_r_file_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_ad_bl_right.csv';
ad_l_data_bl = buildDataMatrixFromSubjectList(ad_l_file_bl);
ad_r_data_bl = buildDataMatrixFromSubjectList(ad_r_file_bl);

cn_l_file_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_cn_fu_left.csv';
cn_r_file_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_cn_fu_right.csv';
cn_l_data_fu = buildDataMatrixFromSubjectList(cn_l_file_fu);
cn_r_data_fu = buildDataMatrixFromSubjectList(cn_r_file_fu);

emci_l_file_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_emci_fu_left.csv';
emci_r_file_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_emci_fu_right.csv';
emci_l_data_fu = buildDataMatrixFromSubjectList(emci_l_file_fu);
emci_r_data_fu = buildDataMatrixFromSubjectList(emci_r_file_fu);

lmci_l_file_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_lmci_fu_left.csv';
lmci_r_file_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_lmci_fu_right.csv';
lmci_l_data_fu = buildDataMatrixFromSubjectList(lmci_l_file_fu);
lmci_r_data_fu = buildDataMatrixFromSubjectList(lmci_r_file_fu);

ad_l_file_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_ad_fu_left.csv';
ad_r_file_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_ad_fu_right.csv';
ad_l_data_fu = buildDataMatrixFromSubjectList(ad_l_file_fu);
ad_r_data_fu = buildDataMatrixFromSubjectList(ad_r_file_fu);

[t_h, t_p, t_ci, t_stats] = ttest(cn_l_data_bl, cn_l_data_fu);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/BLFU-TTEST/fdg_cn_t_l.txt',t_stats.tstat');
max(t_stats.tstat)
[t_h, t_p, t_ci, t_stats] = ttest(cn_r_data_bl, cn_r_data_fu);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/BLFU-TTEST/fdg_cn_t_r.txt',t_stats.tstat');
max(t_stats.tstat)

[t_h, t_p, t_ci, t_stats] = ttest(emci_l_data_bl, emci_l_data_fu);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/BLFU-TTEST/fdg_emci_t_l.txt',t_stats.tstat');
max(t_stats.tstat)
[t_h, t_p, t_ci, t_stats] = ttest(emci_r_data_bl, emci_r_data_fu);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/BLFU-TTEST/fdg_emci_t_r.txt',t_stats.tstat');
max(t_stats.tstat)

[t_h, t_p, t_ci, t_stats] = ttest(lmci_l_data_bl, lmci_l_data_fu);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/BLFU-TTEST/fdg_lmci_t_l.txt',t_stats.tstat');
max(t_stats.tstat)
[t_h, t_p, t_ci, t_stats] = ttest(lmci_r_data_bl, lmci_r_data_fu);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/BLFU-TTEST/fdg_lmci_t_r.txt',t_stats.tstat');
max(t_stats.tstat)

[t_h, t_p, t_ci, t_stats] = ttest(ad_l_data_bl, ad_l_data_fu);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/BLFU-TTEST/fdg_ad_t_l.txt',t_stats.tstat');
max(t_stats.tstat)
[t_h, t_p, t_ci, t_stats] = ttest(ad_r_data_bl, ad_r_data_fu);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/BLFU-TTEST/fdg_ad_t_r.txt',t_stats.tstat');
max(t_stats.tstat)