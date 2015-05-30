%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%     Get BaseLine Data   %%%%
l_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_left_cn.csv';
r_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_right_cn.csv';
r_data = buildDataMatrixFromSubjectList(r_file);
l_data = buildDataMatrixFromSubjectList(l_file);
cn_fulldata_bl = [l_data r_data];

l_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_left_mci.csv';
r_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_right_mci.csv';
r_data = buildDataMatrixFromSubjectList(r_file);
l_data = buildDataMatrixFromSubjectList(l_file);
mci_fulldata_bl = [l_data r_data];

l_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_left_ad.csv';
r_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_right_ad.csv';
r_data = buildDataMatrixFromSubjectList(r_file);
l_data = buildDataMatrixFromSubjectList(l_file);
ad_fulldata_bl = [l_data r_data];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%     Get Followup Data   %%%%
l_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_left_cn.csv';
r_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_right_cn.csv';
r_data = buildDataMatrixFromSubjectList(r_file);
l_data = buildDataMatrixFromSubjectList(l_file);
cn_fulldata_fu1 = [l_data r_data];

l_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_left_mci.csv';
r_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_right_mci.csv';
r_data = buildDataMatrixFromSubjectList(r_file);
l_data = buildDataMatrixFromSubjectList(l_file);
mci_fulldata_fu1 = [l_data r_data];

l_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_left_ad.csv';
r_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_right_ad.csv';
r_data = buildDataMatrixFromSubjectList(r_file);
l_data = buildDataMatrixFromSubjectList(l_file);
ad_fulldata_fu1 = [l_data r_data];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%     Generate correlation Matrix (Baseline)      %%%%%%
cn_smoothed_RawData_bl = simple1DMatrixSmoothing(cn_fulldata_bl, 50);
cn_samples_RawData_bl = subsampleMat(cn_smoothed_RawData_bl, [1 10]);
cn_smoothed_RawData_2_bl = simple1DMatrixSmoothing(cn_samples_RawData_bl, 50);
cn_samples_RawData_2_bl = subsampleMat(cn_smoothed_RawData_2_bl, [1 10]);
cn_sampled_z_scores_bl = zscore(cn_samples_RawData_2_bl);
cn_sampled_corr_mat_bl = corrcoef(cn_sampled_z_scores_bl);

mci_smoothed_RawData_bl = simple1DMatrixSmoothing(mci_fulldata_bl, 50);
mci_samples_RawData_bl = subsampleMat(mci_smoothed_RawData_bl, [1 10]);
mci_smoothed_RawData_2_bl = simple1DMatrixSmoothing(mci_samples_RawData_bl, 50);
mci_samples_RawData_2_bl = subsampleMat(mci_smoothed_RawData_2_bl, [1 10]);
mci_sampled_z_scores_bl = zscore(mci_samples_RawData_2_bl);
mci_sampled_corr_mat_bl = corrcoef(mci_sampled_z_scores_bl);

ad_smoothed_RawData_bl = simple1DMatrixSmoothing(ad_fulldata_bl, 50);
ad_samples_RawData_bl = subsampleMat(ad_smoothed_RawData_bl, [1 10]);
ad_smoothed_RawData_2_bl = simple1DMatrixSmoothing(ad_samples_RawData_bl, 50);
ad_samples_RawData_2_bl = subsampleMat(ad_smoothed_RawData_2_bl, [1 10]);
ad_sampled_z_scores_bl = zscore(ad_samples_RawData_2_bl);
ad_sampled_corr_mat_bl = corrcoef(ad_sampled_z_scores_bl);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%     Generate correlation Matrix (Followup)      %%%%%%
cn_smoothed_RawData_fu1 = simple1DMatrixSmoothing(cn_fulldata_fu1, 50);
cn_samples_RawData_fu1 = subsampleMat(cn_smoothed_RawData_fu1, [1 10]);
cn_smoothed_RawData_2_fu1 = simple1DMatrixSmoothing(cn_samples_RawData_fu1, 50);
cn_samples_RawData_2_fu1 = subsampleMat(cn_smoothed_RawData_2_fu1, [1 10]);
cn_sampled_z_scores_fu1 = zscore(cn_samples_RawData_2_fu1);
cn_sampled_corr_mat_fu1 = corrcoef(cn_sampled_z_scores_fu1);

mci_smoothed_RawData_fu1 = simple1DMatrixSmoothing(mci_fulldata_fu1, 50);
mci_samples_RawData_fu1 = subsampleMat(mci_smoothed_RawData_fu1, [1 10]);
mci_smoothed_RawData_2_fu1 = simple1DMatrixSmoothing(mci_samples_RawData_fu1, 50);
mci_samples_RawData_2_fu1 = subsampleMat(mci_smoothed_RawData_2_fu1, [1 10]);
mci_sampled_z_scores_fu1 = zscore(mci_samples_RawData_2_fu1);
mci_sampled_corr_mat_fu1 = corrcoef(mci_sampled_z_scores_fu1);

ad_smoothed_RawData_fu1 = simple1DMatrixSmoothing(ad_fulldata_fu1, 50);
ad_samples_RawData_fu1 = subsampleMat(ad_smoothed_RawData_fu1, [1 10]);
ad_smoothed_RawData_2_fu1 = simple1DMatrixSmoothing(ad_samples_RawData_fu1, 50);
ad_samples_RawData_2_fu1 = subsampleMat(ad_smoothed_RawData_2_fu1, [1 10]);
ad_sampled_z_scores_fu1 = zscore(ad_samples_RawData_2_fu1);
ad_sampled_corr_mat_fu1 = corrcoef(ad_sampled_z_scores_fu1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%     Generate correlation Matrix (Delta)      %%%%%%
