numberOfClusters = 2000;
cn_main_n = 10;
emci_main_n = 10;
lmci_main_n = 10;
ad_main_n = 10;

typeOf_N = 4; 
% top_n_hubs = 1
% top_n_percent = 2
% top_n_percent_from_Variability = 3
% values above the mean = 4

if (run_cn) [cn_sorted_sums, cn_sorted_sums_index] = sort(cn_full_sumMat, 'descend'); end
if (run_emci) [emci_sorted_sums, emci_sorted_sums_index] = sort(emci_full_sumMat, 'descend'); end
if (run_lmci) [lmci_sorted_sums, lmci_sorted_sums_index] = sort(lmci_full_sumMat, 'descend'); end
if (run_ad) [ad_sorted_sums, ad_sorted_sums_index] = sort(ad_full_sumMat, 'descend'); end

switch typeOf_N
    case 1
        cn_n = cn_main_n;
        emci_n = emci_main_n;
        lmci_n = lmci_main_n;
        ad_n = ad_main_n;
    case 2
        cn_n = numberOfClusters*cn_main_n/100;
        emci_n = numberOfClusters*emci_main_n/100;
        lmci_n = numberOfClusters*lmci_main_n/100;
        ad_n = numberOfClusters*ad_main_n/100;
    case 3
        if (run_cn)
            cn_val = cn_sorted_sums(1)*(1-cn_main_n/100);
            cn_tmp = abs(cn_sorted_sums - cn_val);
            [cn_idx cn_idx] = min(cn_tmp);
            cn_n = cn_idx;
        end
        if (run_emci)
            emci_val = emci_sorted_sums(1)*(1-emci_main_n/100);
            emci_tmp = abs(emci_sorted_sums - emci_val);
            [emci_idx emci_idx] = min(emci_tmp);
            emci_n = emci_idx;
        end
        if (run_lmci)
            lmci_val = lmci_sorted_sums(1)*(1-lmci_main_n/100);
            lmci_tmp = abs(lmci_sorted_sums - lmci_val);
            [lmci_idx lmci_idx] = min(lmci_tmp);
            lmci_n = lmci_idx;
        end
        if (run_ad)
            ad_val = ad_sorted_sums(1)*(1-ad_main_n/100);
            ad_tmp = abs(ad_sorted_sums - ad_val);
            [ad_idx ad_idx] = min(ad_tmp);
            ad_n = ad_idx;
        end
    case 4
        if (run_cn)
            %cn_val = mean(cn_sorted_sums);
            cn_val = prctile(cn_sorted_sums,80);
            cn_tmp = abs(cn_sorted_sums - cn_val);
            [cn_idx cn_idx] = min(cn_tmp);
            cn_n = cn_idx;
        end
        if (run_emci)
            %emci_val = mean(emci_sorted_sums);
            emci_val = prctile(emci_sorted_sums,80);
            emci_tmp = abs(emci_sorted_sums - emci_val);
            [emci_idx emci_idx] = min(emci_tmp);
            emci_n = emci_idx;
        end
        if (run_lmci)
            %lmci_val = mean(lmci_sorted_sums);
            lmci_val = prctile(lmci_sorted_sums,80);
            lmci_tmp = abs(lmci_sorted_sums - lmci_val);
            [lmci_idx lmci_idx] = min(lmci_tmp);
            lmci_n = lmci_idx;
        end
        if (run_ad)
            %ad_val = mean(ad_sorted_sums);
            ad_val = prctile(ad_sorted_sums,80);
            ad_tmp = abs(ad_sorted_sums - ad_val);
            [ad_idx ad_idx] = min(ad_tmp);
            ad_n = ad_idx;
        end
end

if (run_cn)
    cn_connectivity_values_for_max_hub = zeros(numberOfClusters,numberOfClusters);
    cn_connectivity_values_for_max_hub(:,cn_sorted_sums_index(1:cn_n)) = cn_full_avgMat_corr(:,cn_sorted_sums_index(1:cn_n));
    cn_connectivity_values_for_max_hub(cn_sorted_sums_index(1:cn_n),:) = cn_full_avgMat_corr(:,cn_sorted_sums_index(1:cn_n))';
end
if (run_emci)
    emci_connectivity_values_for_max_hub = zeros(numberOfClusters,numberOfClusters);
    emci_connectivity_values_for_max_hub(:,emci_sorted_sums_index(1:emci_n)) = emci_full_avgMat_corr(:,emci_sorted_sums_index(1:emci_n));
    emci_connectivity_values_for_max_hub(emci_sorted_sums_index(1:emci_n),:) = emci_full_avgMat_corr(:,emci_sorted_sums_index(1:emci_n))';
end
if (run_lmci)
    lmci_connectivity_values_for_max_hub = zeros(numberOfClusters,numberOfClusters);
    lmci_connectivity_values_for_max_hub(:,lmci_sorted_sums_index(1:lmci_n)) = lmci_full_avgMat_corr(:,lmci_sorted_sums_index(1:lmci_n));
    lmci_connectivity_values_for_max_hub(lmci_sorted_sums_index(1:lmci_n),:) = lmci_full_avgMat_corr(:,lmci_sorted_sums_index(1:lmci_n))';
end
if (run_ad)
    ad_connectivity_values_for_max_hub = zeros(numberOfClusters,numberOfClusters);
    ad_connectivity_values_for_max_hub(:,ad_sorted_sums_index(1:ad_n)) = ad_full_avgMat_corr(:,ad_sorted_sums_index(1:ad_n));
    ad_connectivity_values_for_max_hub(ad_sorted_sums_index(1:ad_n),:) = ad_full_avgMat_corr(:,ad_sorted_sums_index(1:ad_n))';
end