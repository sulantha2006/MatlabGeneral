pairedT = 1
twoSampleT = 1
Mean = 1


if (pairedT)

[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_left_noPVCD_diffBlur', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_CN_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_left_noPVCD_diffBlur', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_EMCI_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_left_noPVCD_diffBlur', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_LMCI_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_left_noPVCD_diffBlur', 'fdg_fu_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''AD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_AD_left.txt', t.tstat');

[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_right_noPVCD_diffBlur', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_CN_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_right_noPVCD_diffBlur', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_EMCI_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_right_noPVCD_diffBlur', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_LMCI_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','fdg_bl_right_noPVCD_diffBlur', 'fdg_fu_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''AD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Fdg_BLvsFU_AD_right.txt', t.tstat');



[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_CN_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_EMCI_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_LMCI_left.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''AD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_AD_left.txt', t.tstat');

[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_CN_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_EMCI_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_LMCI_right.txt', t.tstat');
[h ,p ,ci ,t] = performPairedTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv','av45_fu_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''AD'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/BLvsFU/Av45_FUvsBL_AD_right.txt', t.tstat');

end

if (twoSampleT)

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'EMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsEMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'LMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsLMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'AD');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsAD_left.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'EMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsEMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'LMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsLMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'AD');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_BL_CNvsAD_right.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'EMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsEMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'LMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsLMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_left_noPVCD_diffBlur', 'diagnosis', 'CN', 'AD');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsAD_left.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'EMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsEMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'LMCI');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsLMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_fu_right_noPVCD_diffBlur', 'diagnosis', 'CN', 'AD');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Fdg_fu_CNvsAD_right.txt', t.tstat');




[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'diagnosis', 'EMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsEMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'diagnosis', 'LMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsLMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_left_noPVCD_diffBlur', 'diagnosis', 'AD', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsAD_left.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'diagnosis', 'EMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsEMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'diagnosis', 'LMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsLMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_bl_right_noPVCD_diffBlur', 'diagnosis', 'AD', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_BL_CNvsAD_right.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'diagnosis', 'EMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsEMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'diagnosis', 'LMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsLMCI_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_left_noPVCD_diffBlur', 'diagnosis', 'AD', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsAD_left.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'diagnosis', 'EMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsEMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'diagnosis', 'LMCI', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsLMCI_right.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'av45_fu_right_noPVCD_diffBlur', 'diagnosis', 'AD', 'CN');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupD/Av45_fu_CNvsAD_right.txt', t.tstat');


end

if (Mean)

CN_mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');
CN_mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''CN'')');

EMCI_mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');
EMCI_mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''EMCI'')');

LMCI_mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');
LMCI_mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''LMCI'')');

AD_mean_l = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_left_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''AD'')');
AD_mean_r = getMean('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable.csv', 'fdg_bl_right_noPVCD_diffBlur', 'strcmp(mdt.diagnosis, ''AD'')');

end