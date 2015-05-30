[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD', 'AMY_Pos_BL', 1, 0, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/Descriptive/RateOfHypo_AMYPvsN_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD', 'AMY_Pos_BL', 1, 0, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/Descriptive/RateOfHypo_AMYPvsN_right.txt', t.tstat');

[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD', 'PTAU_Pos', 1, 0, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/Descriptive/RateOfHypo_PTAUPvsN_left.txt', t.tstat');
[h, p, ci, t] = performTtest('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD', 'PTAU_Pos', 1, 0, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/Descriptive/RateOfHypo_PTAUPvsN_right.txt', t.tstat');