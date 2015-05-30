cn_full_av45_YearlyAmy_642 = cn_full_av45_Yearlyamyloidosis(:,642);
cn_full_fdg_bl_avgMat_642 = cn_full_fdg_bl_avgMat(:,642);
cn_full_av45_bl_avgMat_642 = cn_full_av45_bl_avgMat(:,642);
cn_full_fdg_Yearlyhypomet_642 = cn_full_fdg_Yearlyhypomet(:,642);
cn_full_fdg_fu_avgMat_642 = cn_full_fdg_fu_avgMat(:,642);
cn_full_av45_fu_avgMat_642 = cn_full_av45_fu_avgMat(:,642);

emci_full_av45_YearlyAmy_642 = emci_full_av45_Yearlyamyloidosis(:,642);
emci_full_fdg_bl_avgMat_642 = emci_full_fdg_bl_avgMat(:,642);
emci_full_av45_bl_avgMat_642 = emci_full_av45_bl_avgMat(:,642);
emci_full_fdg_Yearlyhypomet_642 = emci_full_fdg_Yearlyhypomet(:,642);
emci_full_fdg_fu_avgMat_642 = emci_full_fdg_fu_avgMat(:,642);
emci_full_av45_fu_avgMat_642 = emci_full_av45_fu_avgMat(:,642);

lmci_full_av45_YearlyAmy_642 = lmci_full_av45_Yearlyamyloidosis(:,642);
lmci_full_fdg_bl_avgMat_642 = lmci_full_fdg_bl_avgMat(:,642);
lmci_full_av45_bl_avgMat_642 = lmci_full_av45_bl_avgMat(:,642);
lmci_full_fdg_Yearlyhypomet_642 = lmci_full_fdg_Yearlyhypomet(:,642);
lmci_full_fdg_fu_avgMat_642 = lmci_full_fdg_fu_avgMat(:,642);
lmci_full_av45_fu_avgMat_642 = lmci_full_av45_fu_avgMat(:,642);

ad_full_av45_YearlyAmy_642 = ad_full_av45_Yearlyamyloidosis(:,642);
ad_full_fdg_bl_avgMat_642 = ad_full_fdg_bl_avgMat(:,642);
ad_full_av45_bl_avgMat_642 = ad_full_av45_bl_avgMat(:,642);
ad_full_fdg_Yearlyhypomet_642 = ad_full_fdg_Yearlyhypomet(:,642);
ad_full_fdg_fu_avgMat_642 = ad_full_fdg_fu_avgMat(:,642);
ad_full_av45_fu_avgMat_642 = ad_full_av45_fu_avgMat(:,642);

cn_data_mat_642 = [cn_full_fdg_Yearlyhypomet_642 cn_full_fdg_bl_avgMat_642 cn_full_fdg_fu_avgMat_642 cn_full_av45_YearlyAmy_642 cn_full_av45_bl_avgMat_642 cn_full_av45_fu_avgMat_642 cn_age_data cn_gender_data cn_apoe4_data cn_visitDdiffFDG_data cn_visitDdiffAV45_data];
emci_data_mat_642 = [emci_full_fdg_Yearlyhypomet_642 emci_full_fdg_bl_avgMat_642 emci_full_fdg_fu_avgMat_642 emci_full_av45_YearlyAmy_642 emci_full_av45_bl_avgMat_642 emci_full_av45_fu_avgMat_642 emci_age_data emci_gender_data emci_apoe4_data emci_visitDdiffFDG_data emci_visitDdiffAV45_data];
lmci_data_mat_642 = [lmci_full_fdg_Yearlyhypomet_642 lmci_full_fdg_bl_avgMat_642 lmci_full_fdg_fu_avgMat_642 lmci_full_av45_YearlyAmy_642 lmci_full_av45_bl_avgMat_642 lmci_full_av45_fu_avgMat_642 lmci_age_data lmci_gender_data lmci_apoe4_data lmci_visitDdiffFDG_data lmci_visitDdiffAV45_data];
ad_data_mat_642 = [ad_full_fdg_Yearlyhypomet_642 ad_full_fdg_bl_avgMat_642 ad_full_fdg_fu_avgMat_642 ad_full_av45_YearlyAmy_642 ad_full_av45_bl_avgMat_642 ad_full_av45_fu_avgMat_642 ad_age_data ad_gender_data ad_apoe4_data ad_visitDdiffFDG_data ad_visitDdiffAV45_data];

cn_642 = dataset({cn_data_mat_642 'YearlyHypo' 'blFDG' 'fuFDG' 'YearlyAmy' 'blAV45' 'fuAV45' 'age' 'gender' 'apoe4' 'visitDiffFDG' 'visitDiffAV45'});
emci_642 = dataset({emci_data_mat_642 'YearlyHypo' 'blFDG' 'fuFDG' 'YearlyAmy' 'blAV45' 'fuAV45' 'age' 'gender' 'apoe4' 'visitDiffFDG' 'visitDiffAV45'});
lmci_642 = dataset({lmci_data_mat_642 'YearlyHypo' 'blFDG' 'fuFDG' 'YearlyAmy' 'blAV45' 'fuAV45' 'age' 'gender' 'apoe4' 'visitDiffFDG' 'visitDiffAV45'});
ad_642 = dataset({ad_data_mat_642 'YearlyHypo' 'blFDG' 'fuFDG' 'YearlyAmy' 'blAV45' 'fuAV45' 'age' 'gender' 'apoe4' 'visitDiffFDG' 'visitDiffAV45'});

export(cn_642, 'file', '/home/sulantha/Desktop/cn_data_642.csv', 'delim', ',');
export(emci_642, 'file', '/home/sulantha/Desktop/emci_data_642.csv', 'delim', ',');
export(lmci_642, 'file', '/home/sulantha/Desktop/lmci_data_642.csv', 'delim', ',');
export(ad_642, 'file', '/home/sulantha/Desktop/ad_data_642.csv', 'delim', ',');