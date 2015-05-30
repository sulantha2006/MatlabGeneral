addpath(genpath('/home/sulantha/bin/MatlabScripts/'));
%%Model Script
%CN  Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*AMY_Pos_BL+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''CN'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/CN_HypoRate-blAV45_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/CN_HypoRate-blAV45_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/CN_HypoRate-blAV45_av45blAMYPos_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurAMYPosBL);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/CN_HypoRate-blAV45_av45blAMYPos_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurAMYPosBL);

%%Model Script
%CN  Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*AMY_Pos_BL+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''CN'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/CN_HypoRate-blAV45_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/CN_HypoRate-blAV45_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/CN_HypoRate-blAV45_av45blAMYPos_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurAMYPosBL);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/CN_HypoRate-blAV45_av45blAMYPos_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurAMYPosBL);


%%Model Script
%MCI  Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*AMY_Pos_BL+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45blAMYPos_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurAMYPosBL);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45blAMYPos_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurAMYPosBL);

%%Model Script
%MCI  Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*AMY_Pos_BL+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45blAMYPos_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurAMYPosBL);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/MCI_HypoRate-blAV45_av45blAMYPos_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurAMYPosBL);

%%Model Script
%ZAD  Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur*AMY_Pos_BL+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/ZAD_HypoRate-blAV45_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/ZAD_HypoRate-blAV45_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/ZAD_HypoRate-blAV45_av45blAMYPos_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlurAMYPosBL);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/ZAD_HypoRate-blAV45_av45blAMYPos_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlurAMYPosBL);

%%Model Script
%ZAD  Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur*AMY_Pos_BL+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/ZAD_HypoRate-blAV45_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/ZAD_HypoRate-blAV45_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/ZAD_HypoRate-blAV45_av45blAMYPos_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlurAMYPosBL);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYPvsN/ZAD_HypoRate-blAV45_av45blAMYPos_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlurAMYPosBL);