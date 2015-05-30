l_file = '/home/sulantha/RScripts/BEAST_CT_ADNI-baseline_left_cn.csv';
r_file = '/home/sulantha/RScripts/BEAST_CT_ADNI-baseline_right_cn.csv';
r_data = buildDataMatrixFromSubjectList(r_file);
l_data = buildDataMatrixFromSubjectList(l_file);
fulldata = [l_data r_data];
smoothed_RawData = simple1DMatrixSmoothing(fulldata, 50);
samples_RawData = subsampleMat(smoothed_RawData, [1 10]);
smoothed_RawData_2 = simple1DMatrixSmoothing(samples_RawData, 50);
samples_RawData_2 = subsampleMat(smoothed_RawData_2, [1 10]);
sampled_z_scores = zscore(samples_RawData_2);
sampled_corr_mat = corrcoef(sampled_z_scores);
%imagesc(sampled_corr_mat)
