cn_all_d = cn_full_avgMat_corr_p_new_bin.*centroid_distances;
emci_all_d = emci_full_avgMat_corr_p_new_bin.*centroid_distances;
lmci_all_d = lmci_full_avgMat_corr_p_new_bin.*centroid_distances;
ad_all_d = ad_full_avgMat_corr_p_new_bin.*centroid_distances;


cn_all_distance_vec = centroid_distances(find(triu(cn_all_d)));
emci_all_distance_vec = centroid_distances(find(triu(emci_all_d)));
lmci_all_distance_vec = centroid_distances(find(triu(lmci_all_d)));
ad_all_distance_vec = centroid_distances(find(triu(ad_all_d)));

cn_th_distance_vec = centroid_distances(find(triu(cn_full_binMat.*centroid_distances)));
emci_th_distance_vec = centroid_distances(find(triu(emci_full_binMat.*centroid_distances)));
lmci_th_distance_vec = centroid_distances(find(triu(lmci_full_binMat.*centroid_distances)));
ad_th_distance_vec = centroid_distances(find(triu(ad_full_binMat.*centroid_distances)));

cn_inter_distance_vec_t = cn_all_d(1:1000,1001:2000);
cn_inter_distance_vec = cn_inter_distance_vec_t(find(cn_inter_distance_vec_t));
emci_inter_distance_vec_t = emci_all_d(1:1000,1001:2000);
emci_inter_distance_vec = emci_inter_distance_vec_t(find(emci_inter_distance_vec_t));
lmci_inter_distance_vec_t = lmci_all_d(1:1000,1001:2000);
lmci_inter_distance_vec = lmci_inter_distance_vec_t(find(lmci_inter_distance_vec_t));
ad_inter_distance_vec_t = ad_all_d(1:1000,1001:2000);
ad_inter_distance_vec = ad_inter_distance_vec_t(find(ad_inter_distance_vec_t));

cn_intra_distance_vec_t = cn_all_d;
cn_intra_distance_vec_t(1:1000,1001:2000) = 0;
cn_intra_distance_vec = centroid_distances(find(triu(cn_intra_distance_vec_t)));
emci_intra_distance_vec_t = emci_all_d;
emci_intra_distance_vec_t(1:1000,1001:2000) = 0;
emci_intra_distance_vec = centroid_distances(find(triu(emci_intra_distance_vec_t)));
lmci_intra_distance_vec_t = lmci_all_d;
lmci_intra_distance_vec_t(1:1000,1001:2000) = 0;
lmci_intra_distance_vec = centroid_distances(find(triu(lmci_intra_distance_vec_t)));
ad_intra_distance_vec_t = ad_all_d;
ad_intra_distance_vec_t(1:1000,1001:2000) = 0;
ad_intra_distance_vec = centroid_distances(find(triu(ad_intra_distance_vec_t)));

cn_inter_percent = length(cn_inter_distance_vec)*100/(length(cn_inter_distance_vec)+length(cn_intra_distance_vec));
cn_intra_percent = length(cn_intra_distance_vec)*100/(length(cn_inter_distance_vec)+length(cn_intra_distance_vec));

emci_inter_percent = length(emci_inter_distance_vec)*100/(length(emci_inter_distance_vec)+length(emci_intra_distance_vec));
emci_intra_percent = length(emci_intra_distance_vec)*100/(length(emci_inter_distance_vec)+length(emci_intra_distance_vec));

lmci_inter_percent = length(lmci_inter_distance_vec)*100/(length(lmci_inter_distance_vec)+length(lmci_intra_distance_vec));
lmci_intra_percent = length(lmci_intra_distance_vec)*100/(length(lmci_inter_distance_vec)+length(lmci_intra_distance_vec));

ad_inter_percent = length(ad_inter_distance_vec)*100/(length(ad_inter_distance_vec)+length(ad_intra_distance_vec));
ad_intra_percent = length(ad_intra_distance_vec)*100/(length(ad_inter_distance_vec)+length(ad_intra_distance_vec));

inter_intra_vector = [cn_inter_percent;cn_intra_percent;emci_inter_percent;emci_intra_percent;lmci_inter_percent;lmci_intra_percent;ad_inter_percent;ad_intra_percent];

csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_cn_all.txt',cn_all_distance_vec);
csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_emci_all.txt',emci_all_distance_vec);
csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_lmci_all.txt',lmci_all_distance_vec);
csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_ad_all.txt',ad_all_distance_vec);

% csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_cn_inter.txt',cn_inter_distance_vec);
% csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_emci_inter.txt',emci_inter_distance_vec);
% csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_lmci_inter.txt',lmci_inter_distance_vec);
% csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_ad_inter.txt',ad_inter_distance_vec);
% 
% csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_cn_intra.txt',cn_intra_distance_vec);
% csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_emci_intra.txt',emci_intra_distance_vec);
% csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_lmci_intra.txt',lmci_intra_distance_vec);
% csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_ad_intra.txt',ad_intra_distance_vec);

csvwrite('/home/sulantha/Desktop/corr_values_nov2014/av45_bl_percent_inter_intra.txt',inter_intra_vector);

%csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_cn_th.txt',cn_th_distance_vec);
%csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_emci_th.txt',emci_th_distance_vec);
%csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_lmci_th.txt',lmci_th_distance_vec);
%csvwrite('/home/sulantha/Desktop/corr_values_nov2014/distances/av45_bl_ad_th.txt',ad_th_distance_vec);

