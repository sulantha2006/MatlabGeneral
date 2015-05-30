pairedT = 0
twoSampleT = 0
Mean = 1
Sd = 1


if (pairedT)

[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_left_noPVCD_diffBlur', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_CN_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_left_noPVCD_diffBlur', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_EMCI_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_left_noPVCD_diffBlur', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_LMCI_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_left_noPVCD_diffBlur', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_AD_left.txt', t.tstat');

[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_right_noPVCD_diffBlur', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_CN_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_right_noPVCD_diffBlur', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_EMCI_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_right_noPVCD_diffBlur', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_LMCI_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_right_noPVCD_diffBlur', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_AD_right.txt', t.tstat');



[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_CN_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_EMCI_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_LMCI_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_AD_left.txt', t.tstat');

[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_CN_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_EMCI_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_LMCI_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_AD_right.txt', t.tstat');

end

if (twoSampleT)

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'EMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsEMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'LMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsLMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'ZAD');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsAD_left.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'EMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsEMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'LMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsLMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'ZAD');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsAD_right.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'EMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsEMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'LMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsLMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'ZAD');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsAD_left.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'EMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsEMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'LMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsLMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'ZAD');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsAD_right.txt', t.tstat');




[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'diagnosis', 'EMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsEMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'diagnosis', 'LMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsLMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'diagnosis', 'ZAD', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsAD_left.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'diagnosis', 'EMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsEMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'diagnosis', 'LMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsLMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'diagnosis', 'ZAD', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsAD_right.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'diagnosis', 'EMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsEMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'diagnosis', 'LMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsLMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'diagnosis', 'ZAD', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsAD_left.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'diagnosis', 'EMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsEMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'diagnosis', 'LMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsLMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'diagnosis', 'ZAD', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsAD_right.txt', t.tstat');


end

if (Mean)

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_bl_CN_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_bl_CN_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_bl_EMCI_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_bl_EMCI_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_bl_LMCI_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_bl_LMCI_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_bl_ZAD_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_bl_ZAD_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_fu_CN_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_fu_CN_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_fu_EMCI_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_fu_EMCI_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_fu_LMCI_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_fu_LMCI_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_fu_ZAD_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Fdg_fu_ZAD_mean_right.txt', mean_r');

end

if (Sd)

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_bl_CN_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_bl_CN_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_bl_EMCI_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_bl_EMCI_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_bl_LMCI_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_bl_LMCI_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_bl_ZAD_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_bl_ZAD_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_fu_CN_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_fu_CN_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_fu_EMCI_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_fu_EMCI_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_fu_LMCI_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_fu_LMCI_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_fu_ZAD_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Fdg_fu_ZAD_sd_right.txt', sd_r');

end

if (Mean)

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_bl_CN_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_bl_CN_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_bl_EMCI_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_bl_EMCI_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_bl_LMCI_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_bl_LMCI_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_bl_ZAD_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_bl_ZAD_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_fu_CN_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_fu_CN_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_fu_EMCI_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_fu_EMCI_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_fu_LMCI_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_fu_LMCI_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_fu_ZAD_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/Av45_fu_ZAD_mean_right.txt', mean_r');

end

if (Sd)

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_bl_CN_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_bl_CN_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_bl_EMCI_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_bl_EMCI_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_bl_LMCI_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_bl_LMCI_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_bl_ZAD_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_bl_ZAD_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_fu_CN_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_fu_CN_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_fu_EMCI_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_fu_EMCI_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_fu_LMCI_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_fu_LMCI_sd_right.txt', sd_r');

sd_l = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_fu_ZAD_sd_left.txt', sd_l');
sd_r = getSd('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Sd/Av45_fu_ZAD_sd_right.txt', sd_r');

end

if (Mean)

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'HypometabolismRate_left_noPVCD', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/HypometabolismRate_CN_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'HypometabolismRate_right_noPVCD', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/HypometabolismRate_CN_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'HypometabolismRate_left_noPVCD', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/HypometabolismRate_EMCI_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'HypometabolismRate_right_noPVCD', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/HypometabolismRate_EMCI_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'HypometabolismRate_left_noPVCD', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/HypometabolismRate_LMCI_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'HypometabolismRate_right_noPVCD', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/HypometabolismRate_LMCI_mean_right.txt', mean_r');

mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'HypometabolismRate_left_noPVCD', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/HypometabolismRate_ZAD_mean_left.txt', mean_l');
mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'HypometabolismRate_right_noPVCD', 'strcmp(mdt.diagnosis, ''ZAD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/Mean/HypometabolismRate_ZAD_mean_right.txt', mean_r');

end

