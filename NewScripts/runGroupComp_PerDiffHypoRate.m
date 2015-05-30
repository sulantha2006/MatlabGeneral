addpath(genpath('/home/sulantha/bin/MatlabScripts/'));
%%Model Script
%CNvsAD Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_left_noPVCD_diffBlur~av45_bl_left_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''CN'') | strcmp(mdt.diagnosis, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%CNvsAD Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_right_noPVCD_diffBlur~av45_bl_right_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''CN'') | strcmp(mdt.diagnosis, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);



%CNvsEMCI Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_left_noPVCD_diffBlur~av45_bl_left_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''CN'') | strcmp(mdt.diagnosis, ''EMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%CNvsEMCI Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_right_noPVCD_diffBlur~av45_bl_right_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''CN'') | strcmp(mdt.diagnosis, ''EMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisEMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsEMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);



%CNvsLMCI Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_left_noPVCD_diffBlur~av45_bl_left_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''CN'') | strcmp(mdt.diagnosis, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%CNvsLMCI Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_right_noPVCD_diffBlur~av45_bl_right_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''CN'') | strcmp(mdt.diagnosis, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/CNvsLMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);


%EMCIvsLMCI Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_left_noPVCD_diffBlur~av45_bl_left_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''EMCI'') | strcmp(mdt.diagnosis, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%EMCIvsLMCI Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_right_noPVCD_diffBlur~av45_bl_right_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''EMCI'') | strcmp(mdt.diagnosis, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisLMCI);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsLMCI_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);



%EMCIvsAD Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_left_noPVCD_diffBlur~av45_bl_left_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''EMCI'') | strcmp(mdt.diagnosis, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%EMCIvsAD Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_right_noPVCD_diffBlur~av45_bl_right_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''EMCI'') | strcmp(mdt.diagnosis, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/EMCIvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);


%LMCIvsAD Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_left_noPVCD_diffBlur~av45_bl_left_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''LMCI'') | strcmp(mdt.diagnosis, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_left.txt', fdro.corrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_left.txt', fdro.uncorrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%LMCIvsAD Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv', 'Hypometabolism_pd_rate_right_noPVCD_diffBlur~av45_bl_right_noPVCD_diffBlur*diagnosis+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''LMCI'') | strcmp(mdt.diagnosis, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Diag_fdr_t_right.txt', fdro.corrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45IntDiag_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurdiagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Diag_nofdr_t_right.txt', fdro.uncorrected_tValues.diagnosisZAD);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_Diagnosis/LMCIvsZAD_HypoRate-blAV45-diag_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur)
