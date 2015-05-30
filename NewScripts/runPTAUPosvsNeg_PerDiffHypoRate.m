addpath(genpath('/home/sulantha/bin/MatlabScripts/'));
%%Model Script
%CN PTAU Pos vs Neg Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'Hypometabolism_pd_rate_left_noPVCD_diffBlur~av45_bl_left_noPVCD_diffBlur*PTAU_Pos+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin','PTAU_Pos'}, 'strcmp(mdt.diagnosis, ''CN'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_av45IntPtau_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Ptau_fdr_t_left.txt', fdro.corrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_av45IntPtau_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Ptau_nofdr_t_left.txt', fdro.uncorrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%%Model Script
%CN PTAU Pos vs Neg Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'Hypometabolism_pd_rate_right_noPVCD_diffBlur~av45_bl_right_noPVCD_diffBlur*PTAU_Pos+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin','PTAU_Pos'}, 'strcmp(mdt.diagnosis, ''CN'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_av45IntPtau_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Ptau_fdr_t_right.txt', fdro.corrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_av45IntPtau_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Ptau_nofdr_t_right.txt', fdro.uncorrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/CN_HypoRate-blAV45-ptaupos_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);



%%Model Script
%EMCI PTAU Pos vs Neg Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'Hypometabolism_pd_rate_left_noPVCD_diffBlur~av45_bl_left_noPVCD_diffBlur*PTAU_Pos+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin','PTAU_Pos'}, 'strcmp(mdt.diagnosis, ''EMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_av45IntPtau_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Ptau_fdr_t_left.txt', fdro.corrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_av45IntPtau_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Ptau_nofdr_t_left.txt', fdro.uncorrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%%Model Script
%EMCI PTAU Pos vs Neg Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'Hypometabolism_pd_rate_right_noPVCD_diffBlur~av45_bl_right_noPVCD_diffBlur*PTAU_Pos+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin','PTAU_Pos'}, 'strcmp(mdt.diagnosis, ''EMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_av45IntPtau_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Ptau_fdr_t_right.txt', fdro.corrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_av45IntPtau_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Ptau_nofdr_t_right.txt', fdro.uncorrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/EMCI_HypoRate-blAV45-ptaupos_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);


%%Model Script
%LMCI PTAU Pos vs Neg Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'Hypometabolism_pd_rate_left_noPVCD_diffBlur~av45_bl_left_noPVCD_diffBlur*PTAU_Pos+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin','PTAU_Pos'}, 'strcmp(mdt.diagnosis, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_av45IntPtau_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Ptau_fdr_t_left.txt', fdro.corrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_av45IntPtau_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Ptau_nofdr_t_left.txt', fdro.uncorrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%%Model Script
%LMCI PTAU Pos vs Neg Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'Hypometabolism_pd_rate_right_noPVCD_diffBlur~av45_bl_right_noPVCD_diffBlur*PTAU_Pos+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin','PTAU_Pos'}, 'strcmp(mdt.diagnosis, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_av45IntPtau_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Ptau_fdr_t_right.txt', fdro.corrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_av45IntPtau_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Ptau_nofdr_t_right.txt', fdro.uncorrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/LMCI_HypoRate-blAV45-ptaupos_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);


%%Model Script
%ZAD PTAU Pos vs Neg Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'Hypometabolism_pd_rate_left_noPVCD_diffBlur~av45_bl_left_noPVCD_diffBlur*PTAU_Pos+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_left_noPVCD_diffBlur', 'av45_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin','PTAU_Pos'}, 'strcmp(mdt.diagnosis, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_av45IntPtau_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Ptau_fdr_t_left.txt', fdro.corrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Age_fdr_t_left.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Gender_fdr_t_left.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_APOE4_fdr_t_left.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_fdgbl_fdr_t_left.txt', fdro.corrected_tValues.fdgblleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_av45IntPtau_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Ptau_nofdr_t_left.txt', fdro.uncorrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Age_nofdr_t_left.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Gender_nofdr_t_left.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_APOE4_nofdr_t_left.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_fdgbl_nofdr_t_left.txt', fdro.uncorrected_tValues.fdgblleftnoPVCDdiffBlur);

%%Model Script
%ZAD PTAU Pos vs Neg Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'Hypometabolism_pd_rate_right_noPVCD_diffBlur~av45_bl_right_noPVCD_diffBlur*PTAU_Pos+Age_bl+PTGENDER+APOE_bin', {'Hypometabolism_pd_rate_right_noPVCD_diffBlur', 'av45_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin','PTAU_Pos'}, 'strcmp(mdt.diagnosis, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_av45IntPtau_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Ptau_fdr_t_right.txt', fdro.corrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Age_fdr_t_right.txt', fdro.corrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Gender_fdr_t_right.txt', fdro.corrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_APOE4_fdr_t_right.txt', fdro.corrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_fdgbl_fdr_t_right.txt', fdro.corrected_tValues.fdgblrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_av45IntPtau_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurPTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Ptau_nofdr_t_right.txt', fdro.uncorrected_tValues.PTAUPos1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Age_nofdr_t_right.txt', fdro.uncorrected_tValues.Agebl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_Gender_nofdr_t_right.txt', fdro.uncorrected_tValues.PTGENDER2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_APOE4_nofdr_t_right.txt', fdro.uncorrected_tValues.APOEbin1);
%csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/PerDiffRateOfHypo_blAV45_PTAUPos/ZAD_HypoRate-blAV45-ptaupos_fdgbl_nofdr_t_right.txt', fdro.uncorrected_tValues.fdgblrightnoPVCDdiffBlur);
