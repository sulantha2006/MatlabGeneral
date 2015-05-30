cn_binarize_threshold = 0.8;
emci_binarize_threshold = 0.8;
lmci_binarize_threshold = 0.95;
ad_binarize_threshold = 0.8;

run_cn = 1;
run_emci = 1;
run_lmci = 1;
run_ad = 1;

if (run_cn)

    cn_l_file = '/data/data02/sulantha/FDGDIFFVERTEXGLIMFILES/cn_diff_fdg_left.csv';
    cn_r_file = '/data/data02/sulantha/FDGDIFFVERTEXGLIMFILES/cn_diff_fdg_right.csv';
    cn_l_data = buildDataMatrixFromSubjectList(cn_l_file);
    cn_r_data = buildDataMatrixFromSubjectList(cn_r_file);
    
    cn_l_data_T = cn_l_data';
    cn_l_reorderedMatrixToSpacialSpace_temp = cn_l_data_T(l_map_dataToSpacial,:);
    cn_l_reorderedMatrixToSpacialSpace = cn_l_reorderedMatrixToSpacialSpace_temp';
    
    cn_r_data_T = cn_r_data';
    cn_r_reorderedMatrixToSpacialSpace_temp = cn_r_data_T(r_map_dataToSpacial,:);
    cn_r_reorderedMatrixToSpacialSpace = cn_r_reorderedMatrixToSpacialSpace_temp';
    
    cn_l_avgMat = getClusterwiseAverage(cn_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    cn_r_avgMat = getClusterwiseAverage(cn_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    cn_full_avgMat = [cn_l_avgMat cn_r_avgMat];
    [cn_full_avgMat_corr, cn_full_avgMat_corr_p] = corrcoef(cn_full_avgMat);
    cn_full_avgMat_corr_p_fdr = mafdr(cn_full_avgMat_corr_p(:));
    cn_full_avgMat_corr_p_fdr_matrix = vec2mat(cn_full_avgMat_corr_p_fdr, 2000);
    cn_full_avgMat_corr_p_fdr_bin = binarizeMat(cn_full_avgMat_corr_p_fdr_matrix, 0.05, 'l');
    cn_full_avgMat_corr = cn_full_avgMat_corr.*cn_full_avgMat_corr_p_fdr_bin;
    cn_full_binMat = binarizeMat(cn_full_avgMat_corr, cn_binarize_threshold, 'g');
    cn_full_sumMat = sum(cn_full_binMat);
    cn_l_sumMat = cn_full_sumMat(1:1000);
    cn_r_sumMat = cn_full_sumMat(1001:2000);
    cn_l_populated = populateClusters(cn_l_sumMat', l_map_dToS);
    cn_r_populated = populateClusters(cn_r_sumMat', r_map_dToS);
    cn_l_finalData = cn_l_populated(l_map_SpacialToData,:);
    cn_r_finalData = cn_r_populated(r_map_SpacialToData,:);
    csvwrite('/home/sulantha/Brainview/Output/cn_diff_fdg_finalLeft.vertstats',cn_l_finalData);
    csvwrite('/home/sulantha/Brainview/Output/cn_diff_fdg_finalRight.vertstats',cn_r_finalData);

end

if (run_emci)

    emci_l_file = '/data/data02/sulantha/FDGDIFFVERTEXGLIMFILES/emci_diff_fdg_left.csv';
    emci_r_file = '/data/data02/sulantha/FDGDIFFVERTEXGLIMFILES/emci_diff_fdg_right.csv';
    emci_l_data = buildDataMatrixFromSubjectList(emci_l_file);
    emci_r_data = buildDataMatrixFromSubjectList(emci_r_file);

    emci_l_data_T = emci_l_data';
    emci_l_reorderedMatrixToSpacialSpace_temp = emci_l_data_T(l_map_dataToSpacial,:);
    emci_l_reorderedMatrixToSpacialSpace = emci_l_reorderedMatrixToSpacialSpace_temp';

    emci_r_data_T = emci_r_data';
    emci_r_reorderedMatrixToSpacialSpace_temp = emci_r_data_T(r_map_dataToSpacial,:);
    emci_r_reorderedMatrixToSpacialSpace = emci_r_reorderedMatrixToSpacialSpace_temp';

    emci_l_avgMat = getClusterwiseAverage(emci_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    emci_r_avgMat = getClusterwiseAverage(emci_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    emci_full_avgMat = [emci_l_avgMat emci_r_avgMat];
    [emci_full_avgMat_corr, emci_full_avgMat_corr_p] = corrcoef(emci_full_avgMat);
    emci_full_avgMat_corr_p_fdr = mafdr(emci_full_avgMat_corr_p(:));
    emci_full_avgMat_corr_p_fdr_matrix = vec2mat(emci_full_avgMat_corr_p_fdr, 2000);
    emci_full_avgMat_corr_p_fdr_bin = binarizeMat(emci_full_avgMat_corr_p_fdr_matrix, 0.05, 'l');
    emci_full_avgMat_corr = emci_full_avgMat_corr.*emci_full_avgMat_corr_p_fdr_bin;
    emci_full_binMat = binarizeMat(emci_full_avgMat_corr, emci_binarize_threshold, 'g');
    emci_full_sumMat = sum(emci_full_binMat);
    emci_l_sumMat = emci_full_sumMat(1:1000);
    emci_r_sumMat = emci_full_sumMat(1001:2000);
    emci_l_populated = populateClusters(emci_l_sumMat', l_map_dToS);
    emci_r_populated = populateClusters(emci_r_sumMat', r_map_dToS);
    emci_l_finalData = emci_l_populated(l_map_SpacialToData,:);
    emci_r_finalData = emci_r_populated(r_map_SpacialToData,:);
    csvwrite('/home/sulantha/Brainview/Output/emci_diff_fdg_finalLeft.vertstats',emci_l_finalData);
    csvwrite('/home/sulantha/Brainview/Output/emci_diff_fdg_finalRight.vertstats',emci_r_finalData);

end

if (run_lmci)

    lmci_l_file = '/data/data02/sulantha/FDGDIFFVERTEXGLIMFILES/lmci_diff_fdg_left.csv';
    lmci_r_file = '/data/data02/sulantha/FDGDIFFVERTEXGLIMFILES/lmci_diff_fdg_right.csv';
    lmci_l_data = buildDataMatrixFromSubjectList(lmci_l_file);
    lmci_r_data = buildDataMatrixFromSubjectList(lmci_r_file);

    lmci_l_data_T = lmci_l_data';
    lmci_l_reorderedMatrixToSpacialSpace_temp = lmci_l_data_T(l_map_dataToSpacial,:);
    lmci_l_reorderedMatrixToSpacialSpace = lmci_l_reorderedMatrixToSpacialSpace_temp';

    lmci_r_data_T = lmci_r_data';
    lmci_r_reorderedMatrixToSpacialSpace_temp = lmci_r_data_T(r_map_dataToSpacial,:);
    lmci_r_reorderedMatrixToSpacialSpace = lmci_r_reorderedMatrixToSpacialSpace_temp';

    lmci_l_avgMat = getClusterwiseAverage(lmci_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    lmci_r_avgMat = getClusterwiseAverage(lmci_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    lmci_full_avgMat = [lmci_l_avgMat lmci_r_avgMat];
    [lmci_full_avgMat_corr, lmci_full_avgMat_corr_p] = corrcoef(lmci_full_avgMat);
    lmci_full_avgMat_corr_p_fdr = mafdr(lmci_full_avgMat_corr_p(:));
    lmci_full_avgMat_corr_p_fdr_matrix = vec2mat(lmci_full_avgMat_corr_p_fdr, 2000);
    lmci_full_avgMat_corr_p_fdr_bin = binarizeMat(lmci_full_avgMat_corr_p_fdr_matrix, 0.05, 'l');
    lmci_full_avgMat_corr = lmci_full_avgMat_corr.*lmci_full_avgMat_corr_p_fdr_bin;
    lmci_full_binMat = binarizeMat(lmci_full_avgMat_corr, lmci_binarize_threshold, 'g');
    lmci_full_sumMat = sum(lmci_full_binMat);
    lmci_l_sumMat = lmci_full_sumMat(1:1000);
    lmci_r_sumMat = lmci_full_sumMat(1001:2000);
    lmci_l_populated = populateClusters(lmci_l_sumMat', l_map_dToS);
    lmci_r_populated = populateClusters(lmci_r_sumMat', r_map_dToS);
    lmci_l_finalData = lmci_l_populated(l_map_SpacialToData,:);
    lmci_r_finalData = lmci_r_populated(r_map_SpacialToData,:);
    csvwrite('/home/sulantha/Brainview/Output/lmci_diff_fdg_finalLeft.vertstats',lmci_l_finalData);
    csvwrite('/home/sulantha/Brainview/Output/lmci_diff_fdg_finalRight.vertstats',lmci_r_finalData);

end

if (run_ad)

    ad_l_file = '/data/data02/sulantha/FDGDIFFVERTEXGLIMFILES/ad_diff_fdg_left.csv';
    ad_r_file = '/data/data02/sulantha/FDGDIFFVERTEXGLIMFILES/ad_diff_fdg_right.csv';
    ad_l_data = buildDataMatrixFromSubjectList(ad_l_file);
    ad_r_data = buildDataMatrixFromSubjectList(ad_r_file);

    ad_l_data_T = ad_l_data';
    ad_l_reorderedMatrixToSpacialSpace_temp = ad_l_data_T(l_map_dataToSpacial,:);
    ad_l_reorderedMatrixToSpacialSpace = ad_l_reorderedMatrixToSpacialSpace_temp';

    ad_r_data_T = ad_r_data';
    ad_r_reorderedMatrixToSpacialSpace_temp = ad_r_data_T(r_map_dataToSpacial,:);
    ad_r_reorderedMatrixToSpacialSpace = ad_r_reorderedMatrixToSpacialSpace_temp';

    ad_l_avgMat = getClusterwiseAverage(ad_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    ad_r_avgMat = getClusterwiseAverage(ad_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    ad_full_avgMat = [ad_l_avgMat ad_r_avgMat];
    [ad_full_avgMat_corr, ad_full_avgMat_corr_p] = corrcoef(ad_full_avgMat);
    ad_full_avgMat_corr_p_fdr = mafdr(ad_full_avgMat_corr_p(:));
    ad_full_avgMat_corr_p_fdr_matrix = vec2mat(ad_full_avgMat_corr_p_fdr, 2000);
    ad_full_avgMat_corr_p_fdr_bin = binarizeMat(ad_full_avgMat_corr_p_fdr_matrix, 0.05, 'l');
    ad_full_avgMat_corr = ad_full_avgMat_corr.*ad_full_avgMat_corr_p_fdr_bin;
    ad_full_binMat = binarizeMat(ad_full_avgMat_corr, ad_binarize_threshold, 'g');
    ad_full_sumMat = sum(ad_full_binMat);
    ad_l_sumMat = ad_full_sumMat(1:1000);
    ad_r_sumMat = ad_full_sumMat(1001:2000);
    ad_l_populated = populateClusters(ad_l_sumMat', l_map_dToS);
    ad_r_populated = populateClusters(ad_r_sumMat', r_map_dToS);
    ad_l_finalData = ad_l_populated(l_map_SpacialToData,:);
    ad_r_finalData = ad_r_populated(r_map_SpacialToData,:);
    csvwrite('/home/sulantha/Brainview/Output/ad_diff_fdg_finalLeft.vertstats',ad_l_finalData);
    csvwrite('/home/sulantha/Brainview/Output/ad_diff_fdg_finalRight.vertstats',ad_r_finalData);

end