cn_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_cn_fu_left.csv';
cn_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_cn_fu_right.csv';
cn_l_data = buildDataMatrixFromSubjectList(cn_l_file);
cn_r_data = buildDataMatrixFromSubjectList(cn_r_file);

emci_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_emci_fu_left.csv';
emci_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_emci_fu_right.csv';
emci_l_data = buildDataMatrixFromSubjectList(emci_l_file);
emci_r_data = buildDataMatrixFromSubjectList(emci_r_file);

lmci_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_lmci_fu_left.csv';
lmci_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_lmci_fu_right.csv';
lmci_l_data = buildDataMatrixFromSubjectList(lmci_l_file);
lmci_r_data = buildDataMatrixFromSubjectList(lmci_r_file);

ad_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_ad_fu_left.csv';
ad_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_ad_fu_right.csv';
ad_l_data = buildDataMatrixFromSubjectList(ad_l_file);
ad_r_data = buildDataMatrixFromSubjectList(ad_r_file);


cn_full_data_mean_l = mean(cn_l_data);
cn_full_data_mean_r = mean(cn_r_data);
cn_full_data_sd_l = std(cn_l_data);
cn_full_data_sd_r = std(cn_r_data);
emci_full_data_mean_l = mean(emci_l_data);
emci_full_data_mean_r = mean(emci_r_data);
emci_full_data_sd_l = std(emci_l_data);
emci_full_data_sd_r = std(emci_r_data);
lmci_full_data_mean_l = mean(lmci_l_data);
lmci_full_data_mean_r = mean(lmci_r_data);
lmci_full_data_sd_l = std(lmci_l_data);
lmci_full_data_sd_r = std(lmci_r_data);
ad_full_data_mean_l = mean(ad_l_data);
ad_full_data_mean_r = mean(ad_r_data);
ad_full_data_sd_l = std(ad_l_data);
ad_full_data_sd_r = std(ad_r_data);

csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_cn_fu_avg_l.txt',cn_full_data_mean_l');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_cn_fu_avg_r.txt',cn_full_data_mean_r');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_cn_fu_sd_l.txt',cn_full_data_sd_l');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_cn_fu_sd_r.txt',cn_full_data_sd_r');

csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_emci_fu_avg_l.txt',emci_full_data_mean_l');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_emci_fu_avg_r.txt',emci_full_data_mean_r');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_emci_fu_sd_l.txt',emci_full_data_sd_l');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_emci_fu_sd_r.txt',emci_full_data_sd_r'); 

csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_lmci_fu_avg_l.txt',lmci_full_data_mean_l');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_lmci_fu_avg_r.txt',lmci_full_data_mean_r');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_lmci_fu_sd_l.txt',lmci_full_data_sd_l');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_lmci_fu_sd_r.txt',lmci_full_data_sd_r');

csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_ad_fu_avg_l.txt',ad_full_data_mean_l');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_ad_fu_avg_r.txt',ad_full_data_mean_r');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_ad_fu_sd_l.txt',ad_full_data_sd_l');
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_nov_2014/av45_ad_fu_sd_r.txt',ad_full_data_sd_r');


