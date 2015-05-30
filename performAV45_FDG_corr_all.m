av45_all_full_avgMat = [av45_cn_full_avgMat; av45_emci_full_avgMat; av45_lmci_full_avgMat; av45_ad_full_avgMat];
fdg_all_full_avgMat = [fdg_cn_full_avgMat; fdg_emci_full_avgMat; fdg_lmci_full_avgMat; fdg_ad_full_avgMat];

all_FDG_AV_corrVal = zeros(1,2000);
all_FDG_AV_corrValp = ones(1,2000);

for k=1:2000
    [all_FDG_AV_corrVal(k), all_FDG_AV_corrValp(k)] = corr(fdg_cn_full_avgMat(:,k),av45_cn_full_avgMat(:,k));
end

all_FDG_AV_corrVal = all_FDG_AV_corrVal .* fdr_bh(all_FDG_AV_corrValp, 0.1);
all_corrVal_l = all_FDG_AV_corrVal(1:1000);
all_corrVal_r = all_FDG_AV_corrVal(1001:2000);
all_corrVal_l_pop = populateClusters(all_corrVal_l', l_map_dToS);
all_corrVal_r_pop = populateClusters(all_corrVal_r', r_map_dToS);
all_corrVal_l_final = all_corrVal_l_pop(l_map_SpacialToData,:);
all_corrVal_r_final = all_corrVal_r_pop(r_map_SpacialToData,:);

csvwrite('/home/sulantha/Desktop/av45_fdg_corr_sep_2014_fdr_01/all_groups/corr_l_all_fu.txt',cn_corrVal_l_final);
csvwrite('/home/sulantha/Desktop/av45_fdg_corr_sep_2014_fdr_01/all_groups/corr_r_all_fu.txt',cn_corrVal_r_final);
