inputTable = '/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv';
seedValueColumnName = 'av45_bl_left_noPVCD_diffBlur';
correlatingColumnName = 'HypometabolismRate_left_noPVCD';
groupingColumn = 'diagnosis';
group1 = 'CN';
group2 = 'ZAD';
seed_indexes = importdata('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/coordinate_files/fdg_s1_l.txt');

[Group1_r, Group1_Fdr, Group2_r, Group2_Fdr, Diff_Z, Diff_FdZ] = doSeedBasedCorrelation(inputTable, seedValueColumnName, correlatingColumnName, groupingColumn, group1, group2, seed_indexes);
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_noFDR_r_left.txt',Group1_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_FDR_r_left.txt',Group1_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_ZAD_noFDR_r_left.txt',Group2_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_ZAD_FDR_r_left.txt',Group2_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsZAD_noFDR_z_left.txt',Diff_Z');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsZAD_FDR_z_left.txt',Diff_FdZ');

inputTable = '/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv';
seedValueColumnName = 'av45_bl_left_noPVCD_diffBlur';
correlatingColumnName = 'HypometabolismRate_right_noPVCD';
groupingColumn = 'diagnosis';
group1 = 'CN';
group2 = 'ZAD';
seed_indexes = importdata('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/coordinate_files/fdg_s1_l.txt');

[Group1_r, Group1_Fdr, Group2_r, Group2_Fdr, Diff_Z, Diff_FdZ] = doSeedBasedCorrelation(inputTable, seedValueColumnName, correlatingColumnName, groupingColumn, group1, group2, seed_indexes);
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_noFDR_r_right.txt',Group1_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_FDR_r_right.txt',Group1_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_ZAD_noFDR_r_right.txt',Group2_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_ZAD_FDR_r_right.txt',Group2_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsZAD_noFDR_z_right.txt',Diff_Z');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsZAD_FDR_z_right.txt',Diff_FdZ');


inputTable = '/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv';
seedValueColumnName = 'av45_bl_left_noPVCD_diffBlur';
correlatingColumnName = 'HypometabolismRate_left_noPVCD';
groupingColumn = 'diagnosis';
group1 = 'CN';
group2 = 'EMCI';
seed_indexes = importdata('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/coordinate_files/fdg_s1_l.txt');

[Group1_r, Group1_Fdr, Group2_r, Group2_Fdr, Diff_Z, Diff_FdZ] = doSeedBasedCorrelation(inputTable, seedValueColumnName, correlatingColumnName, groupingColumn, group1, group2, seed_indexes);
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_noFDR_r_left.txt',Group1_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_FDR_r_left.txt',Group1_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_EMCI_noFDR_r_left.txt',Group2_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_EMCI_FDR_r_left.txt',Group2_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsEMCI_noFDR_z_left.txt',Diff_Z');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsEMCI_FDR_z_left.txt',Diff_FdZ');

inputTable = '/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv';
seedValueColumnName = 'av45_bl_left_noPVCD_diffBlur';
correlatingColumnName = 'HypometabolismRate_right_noPVCD';
groupingColumn = 'diagnosis';
group1 = 'CN';
group2 = 'EMCI';
seed_indexes = importdata('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/coordinate_files/fdg_s1_l.txt');

[Group1_r, Group1_Fdr, Group2_r, Group2_Fdr, Diff_Z, Diff_FdZ] = doSeedBasedCorrelation(inputTable, seedValueColumnName, correlatingColumnName, groupingColumn, group1, group2, seed_indexes);
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_noFDR_r_right.txt',Group1_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_FDR_r_right.txt',Group1_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_EMCI_noFDR_r_right.txt',Group2_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_EMCI_FDR_r_right.txt',Group2_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsEMCI_noFDR_z_right.txt',Diff_Z');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsEMCI_FDR_z_right.txt',Diff_FdZ');


inputTable = '/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv';
seedValueColumnName = 'av45_bl_left_noPVCD_diffBlur';
correlatingColumnName = 'HypometabolismRate_left_noPVCD';
groupingColumn = 'diagnosis';
group1 = 'CN';
group2 = 'LMCI';
seed_indexes = importdata('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/coordinate_files/fdg_s1_l.txt');

[Group1_r, Group1_Fdr, Group2_r, Group2_Fdr, Diff_Z, Diff_FdZ] = doSeedBasedCorrelation(inputTable, seedValueColumnName, correlatingColumnName, groupingColumn, group1, group2, seed_indexes);
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_noFDR_r_left.txt',Group1_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_FDR_r_left.txt',Group1_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_LMCI_noFDR_r_left.txt',Group2_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_LMCI_FDR_r_left.txt',Group2_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsLMCI_noFDR_z_left.txt',Diff_Z');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsLMCI_FDR_z_left.txt',Diff_FdZ');

inputTable = '/data/data03/sulantha/LinearModelAnalysis_Mar2015/Filterd_MainTable.csv';
seedValueColumnName = 'av45_bl_left_noPVCD_diffBlur';
correlatingColumnName = 'HypometabolismRate_right_noPVCD';
groupingColumn = 'diagnosis';
group1 = 'CN';
group2 = 'LMCI';
seed_indexes = importdata('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/coordinate_files/fdg_s1_l.txt');

[Group1_r, Group1_Fdr, Group2_r, Group2_Fdr, Diff_Z, Diff_FdZ] = doSeedBasedCorrelation(inputTable, seedValueColumnName, correlatingColumnName, groupingColumn, group1, group2, seed_indexes);
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_noFDR_r_right.txt',Group1_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CN_FDR_r_right.txt',Group1_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_LMCI_noFDR_r_right.txt',Group2_r');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_LMCI_FDR_r_right.txt',Group2_Fdr');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsLMCI_noFDR_z_right.txt',Diff_Z');
csvwrite('/data/data03/sulantha/Seed_Based_Analysis_Mar2015/Results/Seed_2/FDR_0.1/Corr_Seed1Left_av45BL_HypoRate_CNvsLMCI_FDR_z_right.txt',Diff_FdZ');
