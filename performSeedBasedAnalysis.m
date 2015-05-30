coordinate_indexes = importdata('/home/sulantha/Desktop/network_hubs_sep_2014/Manual_Seed_Objs/coordinate_files/fdg_s1_r.txt');
%%%% Change Next lines according to the above file. left or right
clusters = unique(r_clusters(coordinate_indexes));
clusters = clusters + 1000;

cn_full_avgMat_corr(logical(eye(size(cn_full_avgMat_corr)))) = 1;
emci_full_avgMat_corr(logical(eye(size(emci_full_avgMat_corr)))) = 1;
lmci_full_avgMat_corr(logical(eye(size(lmci_full_avgMat_corr)))) = 1;
ad_full_avgMat_corr(logical(eye(size(ad_full_avgMat_corr)))) = 1;

z_tranformed_correlations_cn_mean = mean(atan(cn_full_avgMat_corr(clusters,:)));
z_tranformed_correlations_emci_mean = mean(atan(emci_full_avgMat_corr(clusters,:)));
z_tranformed_correlations_lmci_mean = mean(atan(lmci_full_avgMat_corr(clusters,:)));
z_tranformed_correlations_ad_mean = mean(atan(ad_full_avgMat_corr(clusters,:)));

corr_cn_avg = tan(z_tranformed_correlations_cn_mean);
corr_emci_avg = tan(z_tranformed_correlations_emci_mean);
corr_lmci_avg = tan(z_tranformed_correlations_lmci_mean);
corr_ad_avg = tan(z_tranformed_correlations_ad_mean);

%corr_cn_avg = sum(cn_full_avgMat_corr_p_new_bin(clusters,:));
%corr_emci_avg = sum(emci_full_avgMat_corr_p_new_bin(clusters,:));
%corr_lmci_avg = sum(lmci_full_avgMat_corr_p_new_bin(clusters,:));
%corr_ad_avg = sum(ad_full_avgMat_corr_p_new_bin(clusters,:));

cn_areas_l = corr_cn_avg(1:1000);
cn_areas_r = corr_cn_avg(1001:2000);
cn_areas_l_pop = populateClusters(cn_areas_l', l_map_dToS);
cn_areas_r_pop = populateClusters(cn_areas_r', r_map_dToS);
cn_areas_l_final = cn_areas_l_pop(l_map_SpacialToData,:);
cn_areas_r_final = cn_areas_r_pop(r_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/network_hubs_sep_2014/Manual_Seed_Objs/coordinate_files/seedBasedmaps/fdg_s1_r_cn_l.vertstats',cn_areas_l_final);
csvwrite('/home/sulantha/Desktop/network_hubs_sep_2014/Manual_Seed_Objs/coordinate_files/seedBasedmaps/fdg_s1_r_cn_r.vertstats',cn_areas_r_final);

emci_areas_l = corr_emci_avg(1:1000);
emci_areas_r = corr_emci_avg(1001:2000);
emci_areas_l_pop = populateClusters(emci_areas_l', l_map_dToS);
emci_areas_r_pop = populateClusters(emci_areas_r', r_map_dToS);
emci_areas_l_final = emci_areas_l_pop(l_map_SpacialToData,:);
emci_areas_r_final = emci_areas_r_pop(r_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/network_hubs_sep_2014/Manual_Seed_Objs/coordinate_files/seedBasedmaps/fdg_s1_r_emci_l.vertstats',emci_areas_l_final);
csvwrite('/home/sulantha/Desktop/network_hubs_sep_2014/Manual_Seed_Objs/coordinate_files/seedBasedmaps/fdg_s1_r_emci_r.vertstats',emci_areas_r_final);

lmci_areas_l = corr_lmci_avg(1:1000);
lmci_areas_r = corr_lmci_avg(1001:2000);
lmci_areas_l_pop = populateClusters(lmci_areas_l', l_map_dToS);
lmci_areas_r_pop = populateClusters(lmci_areas_r', r_map_dToS);
lmci_areas_l_final = lmci_areas_l_pop(l_map_SpacialToData,:);
lmci_areas_r_final = lmci_areas_r_pop(r_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/network_hubs_sep_2014/Manual_Seed_Objs/coordinate_files/seedBasedmaps/fdg_s1_r_lmci_l.vertstats',lmci_areas_l_final);
csvwrite('/home/sulantha/Desktop/network_hubs_sep_2014/Manual_Seed_Objs/coordinate_files/seedBasedmaps/fdg_s1_r_lmci_r.vertstats',lmci_areas_r_final);

ad_areas_l = corr_ad_avg(1:1000);
ad_areas_r = corr_ad_avg(1001:2000);
ad_areas_l_pop = populateClusters(ad_areas_l', l_map_dToS);
ad_areas_r_pop = populateClusters(ad_areas_r', r_map_dToS);
ad_areas_l_final = ad_areas_l_pop(l_map_SpacialToData,:);
ad_areas_r_final = ad_areas_r_pop(r_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/network_hubs_sep_2014/Manual_Seed_Objs/coordinate_files/seedBasedmaps/fdg_s1_r_ad_l.vertstats',ad_areas_l_final);
csvwrite('/home/sulantha/Desktop/network_hubs_sep_2014/Manual_Seed_Objs/coordinate_files/seedBasedmaps/fdg_s1_r_ad_r.vertstats',ad_areas_r_final);
