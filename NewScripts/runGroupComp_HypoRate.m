addpath(genpath('/home/sulantha/bin/MatlabScripts/'));
%%Model Script
%CNvsAD Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur', 'fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_ANALYSIS, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);
%CNvsAD Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur', 'fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_ANALYSIS, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisANALYSISZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);



%CNvsEMCI Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur', 'fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_ANALYSIS, ''EMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisANALYSISEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisANALYSISEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%CNvsEMCI Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur', 'fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_ANALYSIS, ''EMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisANALYSISEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisANALYSISEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);



%CNvsLMCI Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur', 'fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_ANALYSIS, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%CNvsLMCI Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur', 'fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''CN_N'') | strcmp(mdt.diagnosis_ANALYSIS, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);


%EMCIvsLMCI Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur', 'fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''EMCI'') | strcmp(mdt.diagnosis_ANALYSIS, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%EMCIvsLMCI Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur', 'fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''EMCI'') | strcmp(mdt.diagnosis_ANALYSIS, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisANALYSISLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);



% %EMCIvsAD Left
% clear
% lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur', 'fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''EMCI'') | strcmp(mdt.diagnosis_ANALYSIS, ''ZAD'')');
% fdro=doFDRonLMOObject(lmo, 0.1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);
% 
% %EMCIvsAD Right
% clear
% lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur', 'fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''EMCI'') | strcmp(mdt.diagnosis_ANALYSIS, ''ZAD'')');
% fdro=doFDRonLMOObject(lmo, 0.1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);
% 
% 
% %LMCIvsAD Left
% clear
% lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur', 'fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''LMCI'') | strcmp(mdt.diagnosis_ANALYSIS, ''ZAD'')');
% fdro=doFDRonLMOObject(lmo, 0.1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);
% 
% %LMCIvsAD Right
% clear
% lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*diagnosis_ANALYSIS+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur', 'fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_ANALYSIS, ''LMCI'') | strcmp(mdt.diagnosis_ANALYSIS, ''ZAD'')');
% fdro=doFDRonLMOObject(lmo, 0.1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisANALYSISZAD);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
% csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/RateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur)
