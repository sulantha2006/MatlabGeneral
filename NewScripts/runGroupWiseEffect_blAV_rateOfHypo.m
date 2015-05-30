addpath(genpath('/home/sulantha/bin/MatlabScripts/'));
%%Model Script
%CN  Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''CN'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/CN_HypoRate-blAV45_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/CN_HypoRate-blAV45_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);

%%Model Script
%CN  Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''CN'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/CN_HypoRate-blAV45_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/CN_HypoRate-blAV45_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);


%%Model Script
%EMCI  Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/MCI_HypoRate-blAV45_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/MCI_HypoRate-blAV45_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);

%%Model Script
%EMCI  Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''MCI'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/MCI_HypoRate-blAV45_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/MCI_HypoRate-blAV45_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);

%%Model Script
%ZAD  Left
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_left_noPVCD~av45_bl_left_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+fdg_bl_left_noPVCD_diffBlur', {'HypometabolismRate_left_noPVCD', 'av45_bl_left_noPVCD_diffBlur','fdg_bl_left_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/ZAD_HypoRate-blAV45_av45bl_fdr_t_left.txt', fdro.corrected_tValues.av45blleftnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/ZAD_HypoRate-blAV45_av45bl_nofdr_t_left.txt', fdro.uncorrected_tValues.av45blleftnoPVCDdiffBlur);

%%Model Script
%ZAD  Right
clear
lmo = performLinearModel('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Filterd_MainTable_PTAU.csv', 'HypometabolismRate_right_noPVCD~av45_bl_right_noPVCD_diffBlur+Age_bl+PTGENDER+APOE_bin+fdg_bl_right_noPVCD_diffBlur', {'HypometabolismRate_right_noPVCD', 'av45_bl_right_noPVCD_diffBlur','fdg_bl_right_noPVCD_diffBlur'}, 40962, 0, {'PTGENDER','APOE_bin'}, 'strcmp(mdt.diagnosis_3_bl, ''ZAD'')');
fdro=doFDRonLMOObject(lmo, 0.1);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/ZAD_HypoRate-blAV45_av45bl_fdr_t_right.txt', fdro.corrected_tValues.av45blrightnoPVCDdiffBlur);
csvwrite('/data/data03/sulantha/LinearModelAnalysis_Apr2015/Results/av45_norm_fdg_unnorm/GroupWise/RateOfHypo_blAV45_AMYN/ZAD_HypoRate-blAV45_av45bl_nofdr_t_right.txt', fdro.uncorrected_tValues.av45blrightnoPVCDdiffBlur);
