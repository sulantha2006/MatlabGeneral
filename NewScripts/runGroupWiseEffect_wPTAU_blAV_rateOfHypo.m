addpath(genpath('/home/sulantha/bin/MatlabScripts/'));
%%Model Script
%CN  Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+PTAU181P_bl+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''CN'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/CN_HypoRate-blAV45-PTAU_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/CN_HypoRate-blAV45-PTAU_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/CN_HypoRate-blAV45-PTAU_ptau_fdr_t_left.txt', fdro.corrected_tValues.PTAU181Pbl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/CN_HypoRate-blAV45-PTAU_ptau_nofdr_t_left.txt', fdro.uncorrected_tValues.PTAU181Pbl);

%%Model Script
%CN  Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+PTAU181P_bl+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''CN'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/CN_HypoRate-blAV45-PTAU_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/CN_HypoRate-blAV45-PTAU_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/CN_HypoRate-blAV45-PTAU_ptau_fdr_t_right.txt', fdro.corrected_tValues.PTAU181Pbl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/CN_HypoRate-blAV45-PTAU_ptau_nofdr_t_right.txt', fdro.uncorrected_tValues.PTAU181Pbl);

%%Model Script
%EMCI  Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+PTAU181P_bl+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''EMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/EMCI_HypoRate-blAV45-PTAU_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/EMCI_HypoRate-blAV45-PTAU_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/EMCI_HypoRate-blAV45-PTAU_ptau_fdr_t_left.txt', fdro.corrected_tValues.PTAU181Pbl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/EMCI_HypoRate-blAV45-PTAU_ptau_nofdr_t_left.txt', fdro.uncorrected_tValues.PTAU181Pbl);

%%Model Script
%EMCI  Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+PTAU181P_bl+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''EMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/EMCI_HypoRate-blAV45-PTAU_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/EMCI_HypoRate-blAV45-PTAU_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/EMCI_HypoRate-blAV45-PTAU_ptau_fdr_t_right.txt', fdro.corrected_tValues.PTAU181Pbl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/EMCI_HypoRate-blAV45-PTAU_ptau_nofdr_t_right.txt', fdro.uncorrected_tValues.PTAU181Pbl);

%%Model Script
%LMCI  Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+PTAU181P_bl+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/LMCI_HypoRate-blAV45-PTAU_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/LMCI_HypoRate-blAV45-PTAU_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/LMCI_HypoRate-blAV45-PTAU_ptau_fdr_t_left.txt', fdro.corrected_tValues.PTAU181Pbl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/LMCI_HypoRate-blAV45-PTAU_ptau_nofdr_t_left.txt', fdro.uncorrected_tValues.PTAU181Pbl);

%%Model Script
%LMCI  Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+PTAU181P_bl+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''LMCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/LMCI_HypoRate-blAV45-PTAU_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/LMCI_HypoRate-blAV45-PTAU_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/LMCI_HypoRate-blAV45-PTAU_ptau_fdr_t_right.txt', fdro.corrected_tValues.PTAU181Pbl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/LMCI_HypoRate-blAV45-PTAU_ptau_nofdr_t_right.txt', fdro.uncorrected_tValues.PTAU181Pbl);

%%Model Script
%ZAD  Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+PTAU181P_bl+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/ZAD_HypoRate-blAV45-PTAU_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/ZAD_HypoRate-blAV45-PTAU_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/ZAD_HypoRate-blAV45-PTAU_ptau_fdr_t_left.txt', fdro.corrected_tValues.PTAU181Pbl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/ZAD_HypoRate-blAV45-PTAU_ptau_nofdr_t_left.txt', fdro.uncorrected_tValues.PTAU181Pbl);

%%Model Script
%ZAD  Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+PTAU181P_bl+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/ZAD_HypoRate-blAV45-PTAU_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/ZAD_HypoRate-blAV45-PTAU_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/ZAD_HypoRate-blAV45-PTAU_ptau_fdr_t_right.txt', fdro.corrected_tValues.PTAU181Pbl);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Mar2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_PTAU_blAV45/ZAD_HypoRate-blAV45-PTAU_ptau_nofdr_t_right.txt', fdro.uncorrected_tValues.PTAU181Pbl);