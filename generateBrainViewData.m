correlationThreshold = 0.9;
smoothingKernalWidth = 50;
numberOfDimsForAverage = 2;

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

cn_fulldata_smoothed = simple1DMatrixSmoothing(cn_fulldata, smoothingKernalWidth);
mci_fulldata_smoothed = simple1DMatrixSmoothing(mci_fulldata, smoothingKernalWidth);
ad_fulldata_smoothed = simple1DMatrixSmoothing(ad_fulldata, smoothingKernalWidth);

cn_fulldata_smoothed_reduced = reduceDimensionByColumnAverage(cn_fulldata_smoothed, numberOfDimsForAverage);
mci_fulldata_smoothed_reduced = reduceDimensionByColumnAverage(mci_fulldata_smoothed, numberOfDimsForAverage);
ad_fulldata_smoothed_reduced = reduceDimensionByColumnAverage(ad_fulldata_smoothed, numberOfDimsForAverage);

% cn_fulldata_smoothed_reduced_correlation = corrcoef(cn_fulldata_smoothed_reduced);
% cn_fulldata_smoothed_reduced_correlation_bin = binarizeMat(cn_fulldata_smoothed_reduced_correlation, correlationThreshold);
% cn_fulldata_smoothed_reduced_correlation_bin_sum = sum(cn_fulldata_smoothed_reduced_correlation_bin);
% cn_fulldata_smoothed_reduced_correlation_bin_sum_full = repeatElementsOfMatrix(cn_fulldata_smoothed_reduced_correlation_bin_sum, [1 1]);
% cn_fulldata_smoothed_reduced_correlation_bin_sum_full_left = cn_fulldata_smoothed_reduced_correlation_bin_sum_full(1:40962);
% cn_fulldata_smoothed_reduced_correlation_bin_sum_full_right = cn_fulldata_smoothed_reduced_correlation_bin_sum_full(40963:81924);
% csvwrite('/home/sulantha/Brainview/cn_fulldata_smoothed_reduced_correlation_bin_sum_full_left.vertstats', cn_fulldata_smoothed_reduced_correlation_bin_sum_full_left');
% csvwrite('/home/sulantha/Brainview/cn_fulldata_smoothed_reduced_correlation_bin_sum_full_right.vertstats', cn_fulldata_smoothed_reduced_correlation_bin_sum_full_right');


% mci_fulldata_smoothed_reduced_correlation = corrcoef(mci_fulldata_smoothed_reduced);
% mci_fulldata_smoothed_reduced_correlation_bin = binarizeMat(mci_fulldata_smoothed_reduced_correlation, correlationThreshold);
% mci_fulldata_smoothed_reduced_correlation_bin_sum = sum(mci_fulldata_smoothed_reduced_correlation_bin);
% mci_fulldata_smoothed_reduced_correlation_bin_sum_full = repeatElementsOfMatrix(mci_fulldata_smoothed_reduced_correlation_bin_sum, [1 1]);
% mci_fulldata_smoothed_reduced_correlation_bin_sum_full_left = mci_fulldata_smoothed_reduced_correlation_bin_sum_full(1:40962);
% mci_fulldata_smoothed_reduced_correlation_bin_sum_full_right = mci_fulldata_smoothed_reduced_correlation_bin_sum_full(40963:81924);
% csvwrite('/home/sulantha/Brainview/mci_fulldata_smoothed_reduced_correlation_bin_sum_full_left.vertstats', mci_fulldata_smoothed_reduced_correlation_bin_sum_full_left');
% csvwrite('/home/sulantha/Brainview/mci_fulldata_smoothed_reduced_correlation_bin_sum_full_right.vertstats', mci_fulldata_smoothed_reduced_correlation_bin_sum_full_right');


ad_fulldata_smoothed_reduced_correlation = corrcoef(ad_fulldata_smoothed_reduced);
ad_fulldata_smoothed_reduced_correlation_bin = binarizeMat(ad_fulldata_smoothed_reduced_correlation, correlationThreshold);
ad_fulldata_smoothed_reduced_correlation_bin_sum = sum(ad_fulldata_smoothed_reduced_correlation_bin);
ad_fulldata_smoothed_reduced_correlation_bin_sum_full = repeatElementsOfMatrix(ad_fulldata_smoothed_reduced_correlation_bin_sum, [1 1]);
ad_fulldata_smoothed_reduced_correlation_bin_sum_full_left = ad_fulldata_smoothed_reduced_correlation_bin_sum_full(1:40962);
ad_fulldata_smoothed_reduced_correlation_bin_sum_full_right = ad_fulldata_smoothed_reduced_correlation_bin_sum_full(40963:81924);
csvwrite('/home/sulantha/Brainview/ad_fulldata_smoothed_reduced_correlation_bin_sum_full_left.vertstats', ad_fulldata_smoothed_reduced_correlation_bin_sum_full_left');
csvwrite('/home/sulantha/Brainview/ad_fulldata_smoothed_reduced_correlation_bin_sum_full_right.vertstats', ad_fulldata_smoothed_reduced_correlation_bin_sum_full_right');