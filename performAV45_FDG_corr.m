l_clusters = importdata('/home/sulantha/Brainview/Clusters/l_clusters.csv');
r_clusters = importdata('/home/sulantha/Brainview/Clusters/r_clusters.csv');
l_cluster_centroids = importdata('/home/sulantha/Brainview/Clusters/l_cluster_centroids.csv');
r_cluster_centroids = importdata('/home/sulantha/Brainview/Clusters/r_cluster_centroids.csv');

full_cluster_centroids = [l_cluster_centroids;r_cluster_centroids];

[l_map_dToS, l_map_dataToSpacial] = sortrows(l_clusters);
[r_map_dToS, r_map_dataToSpacial] = sortrows(r_clusters);

[l_map_SToD, l_map_SpacialToData] = sortrows(l_map_dataToSpacial);
[r_map_SToD, r_map_SpacialToData] = sortrows(r_map_dataToSpacial);


run_cn = 1;
run_emci = 1;
run_lmci = 1;
run_ad = 1;

if (run_cn)
    av45_cn_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_cn_fu_left.csv';
    av45_cn_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_cn_fu_right.csv';
    av45_cn_l_data = buildDataMatrixFromSubjectList(av45_cn_l_file);
    av45_cn_r_data = buildDataMatrixFromSubjectList(av45_cn_r_file);
    
    av45_cn_l_data_T = av45_cn_l_data';
    av45_cn_l_reorderedMatrixToSpacialSpace_temp = av45_cn_l_data_T(l_map_dataToSpacial,:);
    av45_cn_l_reorderedMatrixToSpacialSpace = av45_cn_l_reorderedMatrixToSpacialSpace_temp';
    
    av45_cn_r_data_T = av45_cn_r_data';
    av45_cn_r_reorderedMatrixToSpacialSpace_temp = av45_cn_r_data_T(r_map_dataToSpacial,:);
    av45_cn_r_reorderedMatrixToSpacialSpace = av45_cn_r_reorderedMatrixToSpacialSpace_temp';
    
    av45_cn_l_avgMat = getClusterwiseAverage(av45_cn_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    av45_cn_r_avgMat = getClusterwiseAverage(av45_cn_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    av45_cn_full_avgMat = [av45_cn_l_avgMat av45_cn_r_avgMat];
    
    fdg_cn_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_cn_fu_left.csv';
    fdg_cn_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_cn_fu_right.csv';
    fdg_cn_l_data = buildDataMatrixFromSubjectList(fdg_cn_l_file);
    fdg_cn_r_data = buildDataMatrixFromSubjectList(fdg_cn_r_file);
    
    fdg_cn_l_data_T = fdg_cn_l_data';
    fdg_cn_l_reorderedMatrixToSpacialSpace_temp = fdg_cn_l_data_T(l_map_dataToSpacial,:);
    fdg_cn_l_reorderedMatrixToSpacialSpace = fdg_cn_l_reorderedMatrixToSpacialSpace_temp';
    
    fdg_cn_r_data_T = fdg_cn_r_data';
    fdg_cn_r_reorderedMatrixToSpacialSpace_temp = fdg_cn_r_data_T(r_map_dataToSpacial,:);
    fdg_cn_r_reorderedMatrixToSpacialSpace = fdg_cn_r_reorderedMatrixToSpacialSpace_temp';
    
    fdg_cn_l_avgMat = getClusterwiseAverage(fdg_cn_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    fdg_cn_r_avgMat = getClusterwiseAverage(fdg_cn_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    fdg_cn_full_avgMat = [fdg_cn_l_avgMat fdg_cn_r_avgMat];
    
    cn_FDG_AV_corrVal = zeros(1,2000);
    cn_FDG_AV_corrValp = ones(1,2000);
    for k=1:2000
        %if and(mean(fdg_cn_full_avgMat(:,k)) > 0,mean(av45_cn_full_avgMat(:,k) < 0))
            [cn_FDG_AV_corrVal(k), cn_FDG_AV_corrValp(k)] = corr(fdg_cn_full_avgMat(:,k),av45_cn_full_avgMat(:,k));
        %end
    end
    cn_FDG_AV_corrVal = cn_FDG_AV_corrVal .* fdr_bh(cn_FDG_AV_corrValp, 0.1);
    cn_corrVal_l = cn_FDG_AV_corrVal(1:1000);
    cn_corrVal_r = cn_FDG_AV_corrVal(1001:2000);
    cn_corrVal_l_pop = populateClusters(cn_corrVal_l', l_map_dToS);
    cn_corrVal_r_pop = populateClusters(cn_corrVal_r', r_map_dToS);
    cn_corrVal_l_final = cn_corrVal_l_pop(l_map_SpacialToData,:);
    cn_corrVal_r_final = cn_corrVal_r_pop(r_map_SpacialToData,:);
    %csvwrite('/home/sulantha/Desktop/av45_fdg_corr_sep_2014_fdr_01/all_groups/corr_l_cn_per_diff.txt',cn_corrVal_l_final);
    %csvwrite('/home/sulantha/Desktop/av45_fdg_corr_sep_2014_fdr_01/all_groups/corr_r_cn_per_diff.txt',cn_corrVal_r_final);
end


if (run_emci)
    av45_emci_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_emci_fu_left.csv';
    av45_emci_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_emci_fu_right.csv';
    av45_emci_l_data = buildDataMatrixFromSubjectList(av45_emci_l_file);
    av45_emci_r_data = buildDataMatrixFromSubjectList(av45_emci_r_file);
    
    av45_emci_l_data_T = av45_emci_l_data';
    av45_emci_l_reorderedMatrixToSpacialSpace_temp = av45_emci_l_data_T(l_map_dataToSpacial,:);
    av45_emci_l_reorderedMatrixToSpacialSpace = av45_emci_l_reorderedMatrixToSpacialSpace_temp';
    
    av45_emci_r_data_T = av45_emci_r_data';
    av45_emci_r_reorderedMatrixToSpacialSpace_temp = av45_emci_r_data_T(r_map_dataToSpacial,:);
    av45_emci_r_reorderedMatrixToSpacialSpace = av45_emci_r_reorderedMatrixToSpacialSpace_temp';
    
    av45_emci_l_avgMat = getClusterwiseAverage(av45_emci_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    av45_emci_r_avgMat = getClusterwiseAverage(av45_emci_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    av45_emci_full_avgMat = [av45_emci_l_avgMat av45_emci_r_avgMat];
    
    fdg_emci_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_emci_fu_left.csv';
    fdg_emci_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_emci_fu_right.csv';
    fdg_emci_l_data = buildDataMatrixFromSubjectList(fdg_emci_l_file);
    fdg_emci_r_data = buildDataMatrixFromSubjectList(fdg_emci_r_file);
    
    fdg_emci_l_data_T = fdg_emci_l_data';
    fdg_emci_l_reorderedMatrixToSpacialSpace_temp = fdg_emci_l_data_T(l_map_dataToSpacial,:);
    fdg_emci_l_reorderedMatrixToSpacialSpace = fdg_emci_l_reorderedMatrixToSpacialSpace_temp';
    
    fdg_emci_r_data_T = fdg_emci_r_data';
    fdg_emci_r_reorderedMatrixToSpacialSpace_temp = fdg_emci_r_data_T(r_map_dataToSpacial,:);
    fdg_emci_r_reorderedMatrixToSpacialSpace = fdg_emci_r_reorderedMatrixToSpacialSpace_temp';
    
    fdg_emci_l_avgMat = getClusterwiseAverage(fdg_emci_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    fdg_emci_r_avgMat = getClusterwiseAverage(fdg_emci_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    fdg_emci_full_avgMat = [fdg_emci_l_avgMat fdg_emci_r_avgMat];
    
    emci_FDG_AV_corrVal = zeros(1,2000);
    emci_FDG_AV_corrValp = ones(1,2000);
    for k=1:2000
        %if and(mean(fdg_emci_full_avgMat(:,k)) > 0,mean(av45_emci_full_avgMat(:,k) < 0))
            [emci_FDG_AV_corrVal(k), emci_FDG_AV_corrValp(k)] = corr(fdg_emci_full_avgMat(:,k),av45_emci_full_avgMat(:,k));
        %end
    end
    emci_FDG_AV_corrVal = emci_FDG_AV_corrVal .* fdr_bh(emci_FDG_AV_corrValp, 0.1);
    emci_corrVal_l = emci_FDG_AV_corrVal(1:1000);
    emci_corrVal_r = emci_FDG_AV_corrVal(1001:2000);
    emci_corrVal_l_pop = populateClusters(emci_corrVal_l', l_map_dToS);
    emci_corrVal_r_pop = populateClusters(emci_corrVal_r', r_map_dToS);
    emci_corrVal_l_final = emci_corrVal_l_pop(l_map_SpacialToData,:);
    emci_corrVal_r_final = emci_corrVal_r_pop(r_map_SpacialToData,:);
    %csvwrite('/home/sulantha/Desktop/av45_fdg_corr_sep_2014_fdr_01/all_groups/corr_l_emci_per_diff.txt',emci_corrVal_l_final);
    %csvwrite('/home/sulantha/Desktop/av45_fdg_corr_sep_2014_fdr_01/all_groups/corr_r_emci_per_diff.txt',emci_corrVal_r_final);
end


if (run_lmci)
    av45_lmci_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_lmci_fu_left.csv';
    av45_lmci_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_lmci_fu_right.csv';
    av45_lmci_l_data = buildDataMatrixFromSubjectList(av45_lmci_l_file);
    av45_lmci_r_data = buildDataMatrixFromSubjectList(av45_lmci_r_file);
    
    av45_lmci_l_data_T = av45_lmci_l_data';
    av45_lmci_l_reorderedMatrixToSpacialSpace_temp = av45_lmci_l_data_T(l_map_dataToSpacial,:);
    av45_lmci_l_reorderedMatrixToSpacialSpace = av45_lmci_l_reorderedMatrixToSpacialSpace_temp';
    
    av45_lmci_r_data_T = av45_lmci_r_data';
    av45_lmci_r_reorderedMatrixToSpacialSpace_temp = av45_lmci_r_data_T(r_map_dataToSpacial,:);
    av45_lmci_r_reorderedMatrixToSpacialSpace = av45_lmci_r_reorderedMatrixToSpacialSpace_temp';
    
    av45_lmci_l_avgMat = getClusterwiseAverage(av45_lmci_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    av45_lmci_r_avgMat = getClusterwiseAverage(av45_lmci_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    av45_lmci_full_avgMat = [av45_lmci_l_avgMat av45_lmci_r_avgMat];
    
    fdg_lmci_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_lmci_fu_left.csv';
    fdg_lmci_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_lmci_fu_right.csv';
    fdg_lmci_l_data = buildDataMatrixFromSubjectList(fdg_lmci_l_file);
    fdg_lmci_r_data = buildDataMatrixFromSubjectList(fdg_lmci_r_file);
    
    fdg_lmci_l_data_T = fdg_lmci_l_data';
    fdg_lmci_l_reorderedMatrixToSpacialSpace_temp = fdg_lmci_l_data_T(l_map_dataToSpacial,:);
    fdg_lmci_l_reorderedMatrixToSpacialSpace = fdg_lmci_l_reorderedMatrixToSpacialSpace_temp';
    
    fdg_lmci_r_data_T = fdg_lmci_r_data';
    fdg_lmci_r_reorderedMatrixToSpacialSpace_temp = fdg_lmci_r_data_T(r_map_dataToSpacial,:);
    fdg_lmci_r_reorderedMatrixToSpacialSpace = fdg_lmci_r_reorderedMatrixToSpacialSpace_temp';
    
    fdg_lmci_l_avgMat = getClusterwiseAverage(fdg_lmci_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    fdg_lmci_r_avgMat = getClusterwiseAverage(fdg_lmci_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    fdg_lmci_full_avgMat = [fdg_lmci_l_avgMat fdg_lmci_r_avgMat];
    
    lmci_FDG_AV_corrVal = zeros(1,2000);
    lmci_FDG_AV_corrValp = ones(1,2000);
    for k=1:2000
        %if and(mean(fdg_lmci_full_avgMat(:,k)) > 0,mean(av45_lmci_full_avgMat(:,k) < 0))
            [lmci_FDG_AV_corrVal(k), lmci_FDG_AV_corrValp(k)] = corr(fdg_lmci_full_avgMat(:,k),av45_lmci_full_avgMat(:,k));
        %end
    end
    lmci_FDG_AV_corrVal = lmci_FDG_AV_corrVal .* fdr_bh(lmci_FDG_AV_corrValp, 0.1);
    lmci_corrVal_l = lmci_FDG_AV_corrVal(1:1000);
    lmci_corrVal_r = lmci_FDG_AV_corrVal(1001:2000);
    lmci_corrVal_l_pop = populateClusters(lmci_corrVal_l', l_map_dToS);
    lmci_corrVal_r_pop = populateClusters(lmci_corrVal_r', r_map_dToS);
    lmci_corrVal_l_final = lmci_corrVal_l_pop(l_map_SpacialToData,:);
    lmci_corrVal_r_final = lmci_corrVal_r_pop(r_map_SpacialToData,:);
    %csvwrite('/home/sulantha/Desktop/av45_fdg_corr_sep_2014_fdr_01/all_groups/corr_l_lmci_per_diff.txt',lmci_corrVal_l_final);
    %csvwrite('/home/sulantha/Desktop/av45_fdg_corr_sep_2014_fdr_01/all_groups/corr_r_lmci_per_diff.txt',lmci_corrVal_r_final);
end


if (run_ad)
    av45_ad_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_ad_fu_left.csv';
    av45_ad_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_ad_fu_right.csv';
    av45_ad_l_data = buildDataMatrixFromSubjectList(av45_ad_l_file);
    av45_ad_r_data = buildDataMatrixFromSubjectList(av45_ad_r_file);
    
    av45_ad_l_data_T = av45_ad_l_data';
    av45_ad_l_reorderedMatrixToSpacialSpace_temp = av45_ad_l_data_T(l_map_dataToSpacial,:);
    av45_ad_l_reorderedMatrixToSpacialSpace = av45_ad_l_reorderedMatrixToSpacialSpace_temp';
    
    av45_ad_r_data_T = av45_ad_r_data';
    av45_ad_r_reorderedMatrixToSpacialSpace_temp = av45_ad_r_data_T(r_map_dataToSpacial,:);
    av45_ad_r_reorderedMatrixToSpacialSpace = av45_ad_r_reorderedMatrixToSpacialSpace_temp';
    
    av45_ad_l_avgMat = getClusterwiseAverage(av45_ad_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    av45_ad_r_avgMat = getClusterwiseAverage(av45_ad_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    av45_ad_full_avgMat = [av45_ad_l_avgMat av45_ad_r_avgMat];
    
    fdg_ad_l_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_ad_fu_left.csv';
    fdg_ad_r_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_ad_fu_right.csv';
    fdg_ad_l_data = buildDataMatrixFromSubjectList(fdg_ad_l_file);
    fdg_ad_r_data = buildDataMatrixFromSubjectList(fdg_ad_r_file);
    
    fdg_ad_l_data_T = fdg_ad_l_data';
    fdg_ad_l_reorderedMatrixToSpacialSpace_temp = fdg_ad_l_data_T(l_map_dataToSpacial,:);
    fdg_ad_l_reorderedMatrixToSpacialSpace = fdg_ad_l_reorderedMatrixToSpacialSpace_temp';
    
    fdg_ad_r_data_T = fdg_ad_r_data';
    fdg_ad_r_reorderedMatrixToSpacialSpace_temp = fdg_ad_r_data_T(r_map_dataToSpacial,:);
    fdg_ad_r_reorderedMatrixToSpacialSpace = fdg_ad_r_reorderedMatrixToSpacialSpace_temp';
    
    fdg_ad_l_avgMat = getClusterwiseAverage(fdg_ad_l_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    fdg_ad_r_avgMat = getClusterwiseAverage(fdg_ad_r_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    fdg_ad_full_avgMat = [fdg_ad_l_avgMat fdg_ad_r_avgMat];
    
    ad_FDG_AV_corrVal = zeros(1,2000);
    ad_FDG_AV_corrValp = ones(1,2000);
    for k=1:2000
        %if and(mean(fdg_ad_full_avgMat(:,k)) > 0,mean(av45_ad_full_avgMat(:,k) < 0))
            [ad_FDG_AV_corrVal(k), ad_FDG_AV_corrValp(k)] = corr(fdg_ad_full_avgMat(:,k),av45_ad_full_avgMat(:,k));
        %end
    end
    ad_FDG_AV_corrVal = ad_FDG_AV_corrVal .* fdr_bh(ad_FDG_AV_corrValp, 0.1);
    ad_corrVal_l = ad_FDG_AV_corrVal(1:1000);
    ad_corrVal_r = ad_FDG_AV_corrVal(1001:2000);
    ad_corrVal_l_pop = populateClusters(ad_corrVal_l', l_map_dToS);
    ad_corrVal_r_pop = populateClusters(ad_corrVal_r', r_map_dToS);
    ad_corrVal_l_final = ad_corrVal_l_pop(l_map_SpacialToData,:);
    ad_corrVal_r_final = ad_corrVal_r_pop(r_map_SpacialToData,:);
    %csvwrite('/home/sulantha/Desktop/av45_fdg_corr_sep_2014_fdr_01/all_groups/corr_l_ad_per_diff.txt',ad_corrVal_l_final);
    %csvwrite('/home/sulantha/Desktop/av45_fdg_corr_sep_2014_fdr_01/all_groups/corr_r_ad_per_diff.txt',ad_corrVal_r_final);
end
