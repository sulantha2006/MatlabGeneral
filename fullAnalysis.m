l_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_left_cn.csv';
r_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_right_cn.csv';
r_data = buildDataMatrixFromSubjectList(r_file);
l_data = buildDataMatrixFromSubjectList(l_file);
cn_fulldata = [l_data r_data];

l_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_left_mci.csv';
r_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_right_mci.csv';
r_data = buildDataMatrixFromSubjectList(r_file);
l_data = buildDataMatrixFromSubjectList(l_file);
mci_fulldata = [l_data r_data];

l_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_left_ad.csv';
r_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_right_ad.csv';
r_data = buildDataMatrixFromSubjectList(r_file);
l_data = buildDataMatrixFromSubjectList(l_file);
ad_fulldata = [l_data r_data];

cn_smoothed_RawData = simple1DMatrixSmoothing(cn_fulldata, 50);
cn_samples_RawData = subsampleMat(cn_smoothed_RawData, [1 10]);
cn_smoothed_RawData_2 = simple1DMatrixSmoothing(cn_samples_RawData, 50);
cn_samples_RawData_2 = subsampleMat(cn_smoothed_RawData_2, [1 10]);
cn_sampled_z_scores = zscore(cn_samples_RawData_2);
cn_sampled_corr_mat = corrcoef(cn_sampled_z_scores);

mci_smoothed_RawData = simple1DMatrixSmoothing(mci_fulldata, 50);
mci_samples_RawData = subsampleMat(mci_smoothed_RawData, [1 10]);
mci_smoothed_RawData_2 = simple1DMatrixSmoothing(mci_samples_RawData, 50);
mci_samples_RawData_2 = subsampleMat(mci_smoothed_RawData_2, [1 10]);
mci_sampled_z_scores = zscore(mci_samples_RawData_2);
mci_sampled_corr_mat = corrcoef(mci_sampled_z_scores);

ad_smoothed_RawData = simple1DMatrixSmoothing(ad_fulldata, 50);
ad_samples_RawData = subsampleMat(ad_smoothed_RawData, [1 10]);
ad_smoothed_RawData_2 = simple1DMatrixSmoothing(ad_samples_RawData, 50);
ad_samples_RawData_2 = subsampleMat(ad_smoothed_RawData_2, [1 10]);
ad_sampled_z_scores = zscore(ad_samples_RawData_2);
ad_sampled_corr_mat = corrcoef(ad_sampled_z_scores);

cn_sampled_corr_mat_fisherz = fisherToZ(cn_sampled_corr_mat);
mci_sampled_corr_mat_fisherz = fisherToZ(mci_sampled_corr_mat);
ad_sampled_corr_mat_fisherz = fisherToZ(ad_sampled_corr_mat);

%   99% - 2.58
%   95% - 1.96
%   sigma(stdev) = 1/sqrt(N-3)
%%%%    Not happy - need to be more robust %%%%
NofObs = length(cn_sampled_corr_mat);
sigma = 1/sqrt(NofObs - 3);
threshold = 2.58*sigma;
cn_sampled_corr_mat_fisherz_bin = binarizeMat(cn_sampled_corr_mat_fisherz, threshold);
mci_sampled_corr_mat_fisherz_bin = binarizeMat(mci_sampled_corr_mat_fisherz, threshold);
ad_sampled_corr_mat_fisherz_bin = binarizeMat(ad_sampled_corr_mat_fisherz, threshold);

cn_sampled_corr_mat_fisherz_bin_sum = sum(cn_sampled_corr_mat_fisherz_bin);
mci_sampled_corr_mat_fisherz_bin_sum = sum(mci_sampled_corr_mat_fisherz_bin);
ad_sampled_corr_mat_fisherz_bin_sum = sum(ad_sampled_corr_mat_fisherz_bin);


%%%%%%%%%%%%%%%%%%%%%%%%    Initial Run binarize using the r %%%%%%%%%%%
cn_sampled_corr_mat_bin = binarizeMat(cn_sampled_corr_mat, 0.9);
mci_sampled_corr_mat_bin = binarizeMat(mci_sampled_corr_mat, 0.9);
ad_sampled_corr_mat_bin = binarizeMat(ad_sampled_corr_mat, 0.9);

cn_sampled_corr_mat_bin_sum = sum(cn_sampled_corr_mat_bin);
mci_sampled_corr_mat_bin_sum = sum(mci_sampled_corr_mat_bin);
ad_sampled_corr_mat_bin_sum = sum(ad_sampled_corr_mat_bin);


