addpath(genpath('/home/sulantha/bin/MatlabScripts/'));
%% rateOfHypo~av45Regioanl
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45/MCI_HypoRate-blAV45_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45/MCI_HypoRate-blAV45_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);

clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45/MCI_HypoRate-blAV45_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45/MCI_HypoRate-blAV45_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);

%% rateOfHypo~av45Regioanl*AMYP/N
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*AMY_Pos_BL+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45blAMYPos_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurAMYPosBL);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45blAMYPos_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurAMYPosBL);

clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*AMY_Pos_BL+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45blAMYPos_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurAMYPosBL);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45blAMYPos_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurAMYPosBL);

%% rateOfHypo~av45Regioanl*PTAUP/N
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*PTAU_Pos+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_PTAUPvsN/MCI_HypoRate-blAV45_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_PTAUPvsN/MCI_HypoRate-blAV45_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_PTAUPvsN/MCI_HypoRate-blAV45_av45blPTAUPos_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurPTAUPos);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_PTAUPvsN/MCI_HypoRate-blAV45_av45blPTAUPos_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurPTAUPos);

clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*PTAU_Pos+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_PTAUPvsN/MCI_HypoRate-blAV45_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_PTAUPvsN/MCI_HypoRate-blAV45_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_PTAUPvsN/MCI_HypoRate-blAV45_av45blPTAUPos_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurPTAUPos);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_PTAUPvsN/MCI_HypoRate-blAV45_av45blPTAUPos_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurPTAUPos);

%% rateOfHypo~av45Regioanl*AMYP_TAUP_G2
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*AMYP_TAUP_G2+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G2/MCI_HypoRate-blAV45_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G2/MCI_HypoRate-blAV45_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G2/MCI_HypoRate-blAV45_av45blAMYPTAUG2_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurAMYPTAUPG2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G2/MCI_HypoRate-blAV45_av45blAMYPTAUG2_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurAMYPTAUPG2);

clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*AMYP_TAUP_G2+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G2/MCI_HypoRate-blAV45_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G2/MCI_HypoRate-blAV45_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G2/MCI_HypoRate-blAV45_av45blAMYPTAUG2_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurAMYPTAUPG2);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G2/MCI_HypoRate-blAV45_av45blAMYPTAUG2_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurAMYPTAUPG2);

%% rateOfHypo~av45Regioanl*AMYP_TAUP_G1
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*AMYP_TAUP_G1+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin','AMYP_TAUP_G1'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG22_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurAMYPTAUPG12);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG22_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurAMYPTAUPG12);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG23_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurAMYPTAUPG13);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG23_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurAMYPTAUPG13);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG24_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurAMYPTAUPG14);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG24_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurAMYPTAUPG14);

clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*AMYP_TAUP_G1+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin','AMYP_TAUP_G1'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG22_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurAMYPTAUPG12);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG22_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurAMYPTAUPG12);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG23_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurAMYPTAUPG13);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG23_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurAMYPTAUPG13);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG24_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurAMYPTAUPG14);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/MCI/RateOfHypo_blAV45_AMYP_TAUP_G1/MCI_HypoRate-blAV45_av45blAMYPTAUG24_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurAMYPTAUPG14);
