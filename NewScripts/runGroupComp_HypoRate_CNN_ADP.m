addpath(genpath('/home/sulantha/bin/MatlabScripts/'));
%%Model Script
%CNvsAD Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur', 'fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_AMYP_BL, ''ZAD_N'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%CNvsAD Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur', 'fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_AMYP_BL, ''ZAD_N'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis_CNN_ADP/CNvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);

