addpath(genpath('/home/sulantha/bin/MatlabScripts/'));
%%Model Script

%CNvsMCI Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*diagnosis_3_bl+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur', 'fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''CN'') | strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNvsMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosis3blMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNvsMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosis3blMCI);

%CNvsMCI Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*diagnosis_3_bl+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur', 'fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''CN'') | strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNvsMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosis3blMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNvsMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosis3blMCI);


%CNvsAD Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*diagnosis_3_bl+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur', 'fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''CN'') | strcmp(mdt.diagnosis_3_bl, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosis3blZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosis3blZAD);
%CNvsAD Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*diagnosis_3_bl+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur', 'fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''CN'') | strcmp(mdt.diagnosis_3_bl, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosis3blZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosis3blZAD);

%CNNvsMCI Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*diagnosis_3_bl+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur', 'fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNNvsMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosis3blMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNNvsMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosis3blMCI);

%CNNvsMCI Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*diagnosis_3_bl+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur', 'fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNNvsMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosis3blMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNNvsMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosis3blMCI);

%CNNvsAD Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*diagnosis_3_bl+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur', 'fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_3_bl, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNNvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosis3blZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNNvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosis3blZAD);
%CNNvsAD Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*diagnosis_3_bl+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur', 'fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_3_bl, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNNvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosis3blZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupComparison/RateOfHypo_blAV45_Diagnosis_3_Groups/CNNvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosis3blZAD);
