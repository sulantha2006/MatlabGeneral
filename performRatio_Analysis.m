run_cn = 1;
run_emci = 1;
run_lmci = 1;
run_ad = 1;

if (run_cn)
    cn_l_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_cn_bl_left.csv';
    cn_r_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_cn_bl_right.csv';
    cn_l_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_cn_fu_left.csv';
    cn_r_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_cn_fu_right.csv';
    
    cn_l_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_cn_bl_left.csv';
    cn_r_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_cn_bl_right.csv';
    cn_l_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_cn_fu_left.csv';
    cn_r_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_cn_fu_right.csv';
    
    cn_l_data_fdg_bl = buildDataMatrixFromSubjectList(cn_l_file_fdg_bl);
    cn_r_data_fdg_bl = buildDataMatrixFromSubjectList(cn_r_file_fdg_bl);
    
    cn_l_data_fdg_bl_T = cn_l_data_fdg_bl';
    cn_l_fdg_bl_reorderedMatrixToSpacialSpace_temp = cn_l_data_fdg_bl_T(l_map_dataToSpacial,:);
    cn_l_fdg_bl_reorderedMatrixToSpacialSpace = cn_l_fdg_bl_reorderedMatrixToSpacialSpace_temp';
    
    cn_r_data_fdg_bl_T = cn_r_data_fdg_bl';
    cn_r_fdg_bl_reorderedMatrixToSpacialSpace_temp = cn_r_data_fdg_bl_T(r_map_dataToSpacial,:);
    cn_r_fdg_bl_reorderedMatrixToSpacialSpace = cn_r_fdg_bl_reorderedMatrixToSpacialSpace_temp';
    
    cn_l_fdg_bl_avgMat = getClusterwiseAverage(cn_l_fdg_bl_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    cn_r_fdg_bl_avgMat = getClusterwiseAverage(cn_r_fdg_bl_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    cn_full_fdg_bl_avgMat = [cn_l_fdg_bl_avgMat cn_r_fdg_bl_avgMat];
    
    
    
    cn_l_data_fdg_fu = buildDataMatrixFromSubjectList(cn_l_file_fdg_fu);
    cn_r_data_fdg_fu = buildDataMatrixFromSubjectList(cn_r_file_fdg_fu);
    
    cn_l_data_fdg_fu_T = cn_l_data_fdg_fu';
    cn_l_fdg_fu_reorderedMatrixToSpacialSpace_temp = cn_l_data_fdg_fu_T(l_map_dataToSpacial,:);
    cn_l_fdg_fu_reorderedMatrixToSpacialSpace = cn_l_fdg_fu_reorderedMatrixToSpacialSpace_temp';
    
    cn_r_data_fdg_fu_T = cn_r_data_fdg_fu';
    cn_r_fdg_fu_reorderedMatrixToSpacialSpace_temp = cn_r_data_fdg_fu_T(r_map_dataToSpacial,:);
    cn_r_fdg_fu_reorderedMatrixToSpacialSpace = cn_r_fdg_fu_reorderedMatrixToSpacialSpace_temp';
    
    cn_l_fdg_fu_avgMat = getClusterwiseAverage(cn_l_fdg_fu_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    cn_r_fdg_fu_avgMat = getClusterwiseAverage(cn_r_fdg_fu_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    cn_full_fdg_fu_avgMat = [cn_l_fdg_fu_avgMat cn_r_fdg_fu_avgMat];
    
    
    
    cn_l_data_av45_bl = buildDataMatrixFromSubjectList(cn_l_file_av45_bl);
    cn_r_data_av45_bl = buildDataMatrixFromSubjectList(cn_r_file_av45_bl);
    
    cn_l_data_av45_bl_T = cn_l_data_av45_bl';
    cn_l_av45_bl_reorderedMatrixToSpacialSpace_temp = cn_l_data_av45_bl_T(l_map_dataToSpacial,:);
    cn_l_av45_bl_reorderedMatrixToSpacialSpace = cn_l_av45_bl_reorderedMatrixToSpacialSpace_temp';
    
    cn_r_data_av45_bl_T = cn_r_data_av45_bl';
    cn_r_av45_bl_reorderedMatrixToSpacialSpace_temp = cn_r_data_av45_bl_T(r_map_dataToSpacial,:);
    cn_r_av45_bl_reorderedMatrixToSpacialSpace = cn_r_av45_bl_reorderedMatrixToSpacialSpace_temp';
    
    cn_l_av45_bl_avgMat = getClusterwiseAverage(cn_l_av45_bl_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    cn_r_av45_bl_avgMat = getClusterwiseAverage(cn_r_av45_bl_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    cn_full_av45_bl_avgMat = [cn_l_av45_bl_avgMat cn_r_av45_bl_avgMat];
    
    
    
    cn_l_data_av45_fu = buildDataMatrixFromSubjectList(cn_l_file_av45_fu);
    cn_r_data_av45_fu = buildDataMatrixFromSubjectList(cn_r_file_av45_fu);
    
    cn_l_data_av45_fu_T = cn_l_data_av45_fu';
    cn_l_av45_fu_reorderedMatrixToSpacialSpace_temp = cn_l_data_av45_fu_T(l_map_dataToSpacial,:);
    cn_l_av45_fu_reorderedMatrixToSpacialSpace = cn_l_av45_fu_reorderedMatrixToSpacialSpace_temp';
    
    cn_r_data_av45_fu_T = cn_r_data_av45_fu';
    cn_r_av45_fu_reorderedMatrixToSpacialSpace_temp = cn_r_data_av45_fu_T(r_map_dataToSpacial,:);
    cn_r_av45_fu_reorderedMatrixToSpacialSpace = cn_r_av45_fu_reorderedMatrixToSpacialSpace_temp';
    
    cn_l_av45_fu_avgMat = getClusterwiseAverage(cn_l_av45_fu_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    cn_r_av45_fu_avgMat = getClusterwiseAverage(cn_r_av45_fu_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    cn_full_av45_fu_avgMat = [cn_l_av45_fu_avgMat cn_r_av45_fu_avgMat];
    
    cn_l_fdg_hypomet = mean(cn_l_data_fdg_bl - cn_l_data_fdg_fu);
    cn_r_fdg_hypomet = mean(cn_r_data_fdg_bl - cn_r_data_fdg_fu);
    cn_l_av45_amylodosis = mean(cn_l_data_av45_fu - cn_l_data_av45_bl);
    cn_r_av45_amylodosis = mean(cn_r_data_av45_fu - cn_r_data_av45_bl);
    
    %cn_l_fdg_hypomet = cn_l_fdg_bl_avgMat - cn_l_fdg_fu_avgMat;
    %cn_r_fdg_hypomet = cn_r_fdg_bl_avgMat - cn_r_fdg_fu_avgMat;
    %cn_l_av45_amylodosis = cn_l_av45_fu_avgMat - cn_l_av45_bl_avgMat;
    %cn_r_av45_amylodosis = cn_r_av45_fu_avgMat - cn_r_av45_bl_avgMat;
    
    cn_l_ratio = cn_l_fdg_hypomet./cn_l_av45_amylodosis;
    cn_r_ratio = cn_r_fdg_hypomet./cn_r_av45_amylodosis;  
    
    cn_l_fdg_hypomet_bin = cn_l_fdg_hypomet > 0;
    cn_r_fdg_hypomet_bin = cn_r_fdg_hypomet > 0;
    cn_l_av45_amylodosis_bin = cn_l_av45_amylodosis > 0;
    cn_r_av45_amylodosis_bin = cn_r_av45_amylodosis > 0;
    

	cn_l_ratio(not(cn_l_fdg_hypomet_bin & cn_l_av45_amylodosis_bin)) = -1;
	cn_r_ratio(not(cn_r_fdg_hypomet_bin & cn_r_av45_amylodosis_bin)) = -1;
    %cn_l_ratio = cn_l_ratio .* cn_l_fdg_hypomet_bin .* cn_l_av45_amylodosis_bin;
    %cn_r_ratio = cn_r_ratio .* cn_r_fdg_hypomet_bin .* cn_r_av45_amylodosis_bin;
    
end

if (run_emci)
    emci_l_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_emci_bl_left.csv';
    emci_r_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_emci_bl_right.csv';
    emci_l_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_emci_fu_left.csv';
    emci_r_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_emci_fu_right.csv';
    
    emci_l_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_emci_bl_left.csv';
    emci_r_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_emci_bl_right.csv';
    emci_l_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_emci_fu_left.csv';
    emci_r_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_emci_fu_right.csv';
    
    emci_l_data_fdg_bl = buildDataMatrixFromSubjectList(emci_l_file_fdg_bl);
    emci_r_data_fdg_bl = buildDataMatrixFromSubjectList(emci_r_file_fdg_bl);
    
    emci_l_data_fdg_bl_T = emci_l_data_fdg_bl';
    emci_l_fdg_bl_reorderedMatrixToSpacialSpace_temp = emci_l_data_fdg_bl_T(l_map_dataToSpacial,:);
    emci_l_fdg_bl_reorderedMatrixToSpacialSpace = emci_l_fdg_bl_reorderedMatrixToSpacialSpace_temp';
    
    emci_r_data_fdg_bl_T = emci_r_data_fdg_bl';
    emci_r_fdg_bl_reorderedMatrixToSpacialSpace_temp = emci_r_data_fdg_bl_T(r_map_dataToSpacial,:);
    emci_r_fdg_bl_reorderedMatrixToSpacialSpace = emci_r_fdg_bl_reorderedMatrixToSpacialSpace_temp';
    
    emci_l_fdg_bl_avgMat = getClusterwiseAverage(emci_l_fdg_bl_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    emci_r_fdg_bl_avgMat = getClusterwiseAverage(emci_r_fdg_bl_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    emci_full_fdg_bl_avgMat = [emci_l_fdg_bl_avgMat emci_r_fdg_bl_avgMat];
    
    
    
    emci_l_data_fdg_fu = buildDataMatrixFromSubjectList(emci_l_file_fdg_fu);
    emci_r_data_fdg_fu = buildDataMatrixFromSubjectList(emci_r_file_fdg_fu);
    
    emci_l_data_fdg_fu_T = emci_l_data_fdg_fu';
    emci_l_fdg_fu_reorderedMatrixToSpacialSpace_temp = emci_l_data_fdg_fu_T(l_map_dataToSpacial,:);
    emci_l_fdg_fu_reorderedMatrixToSpacialSpace = emci_l_fdg_fu_reorderedMatrixToSpacialSpace_temp';
    
    emci_r_data_fdg_fu_T = emci_r_data_fdg_fu';
    emci_r_fdg_fu_reorderedMatrixToSpacialSpace_temp = emci_r_data_fdg_fu_T(r_map_dataToSpacial,:);
    emci_r_fdg_fu_reorderedMatrixToSpacialSpace = emci_r_fdg_fu_reorderedMatrixToSpacialSpace_temp';
    
    emci_l_fdg_fu_avgMat = getClusterwiseAverage(emci_l_fdg_fu_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    emci_r_fdg_fu_avgMat = getClusterwiseAverage(emci_r_fdg_fu_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    emci_full_fdg_fu_avgMat = [emci_l_fdg_fu_avgMat emci_r_fdg_fu_avgMat];
    
    
    
    emci_l_data_av45_bl = buildDataMatrixFromSubjectList(emci_l_file_av45_bl);
    emci_r_data_av45_bl = buildDataMatrixFromSubjectList(emci_r_file_av45_bl);
    
    emci_l_data_av45_bl_T = emci_l_data_av45_bl';
    emci_l_av45_bl_reorderedMatrixToSpacialSpace_temp = emci_l_data_av45_bl_T(l_map_dataToSpacial,:);
    emci_l_av45_bl_reorderedMatrixToSpacialSpace = emci_l_av45_bl_reorderedMatrixToSpacialSpace_temp';
    
    emci_r_data_av45_bl_T = emci_r_data_av45_bl';
    emci_r_av45_bl_reorderedMatrixToSpacialSpace_temp = emci_r_data_av45_bl_T(r_map_dataToSpacial,:);
    emci_r_av45_bl_reorderedMatrixToSpacialSpace = emci_r_av45_bl_reorderedMatrixToSpacialSpace_temp';
    
    emci_l_av45_bl_avgMat = getClusterwiseAverage(emci_l_av45_bl_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    emci_r_av45_bl_avgMat = getClusterwiseAverage(emci_r_av45_bl_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    emci_full_av45_bl_avgMat = [emci_l_av45_bl_avgMat emci_r_av45_bl_avgMat];
    
    
    
    emci_l_data_av45_fu = buildDataMatrixFromSubjectList(emci_l_file_av45_fu);
    emci_r_data_av45_fu = buildDataMatrixFromSubjectList(emci_r_file_av45_fu);
    
    emci_l_data_av45_fu_T = emci_l_data_av45_fu';
    emci_l_av45_fu_reorderedMatrixToSpacialSpace_temp = emci_l_data_av45_fu_T(l_map_dataToSpacial,:);
    emci_l_av45_fu_reorderedMatrixToSpacialSpace = emci_l_av45_fu_reorderedMatrixToSpacialSpace_temp';
    
    emci_r_data_av45_fu_T = emci_r_data_av45_fu';
    emci_r_av45_fu_reorderedMatrixToSpacialSpace_temp = emci_r_data_av45_fu_T(r_map_dataToSpacial,:);
    emci_r_av45_fu_reorderedMatrixToSpacialSpace = emci_r_av45_fu_reorderedMatrixToSpacialSpace_temp';
    
    emci_l_av45_fu_avgMat = getClusterwiseAverage(emci_l_av45_fu_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    emci_r_av45_fu_avgMat = getClusterwiseAverage(emci_r_av45_fu_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    emci_full_av45_fu_avgMat = [emci_l_av45_fu_avgMat emci_r_av45_fu_avgMat];
    
    emci_l_fdg_hypomet = mean(emci_l_data_fdg_bl - emci_l_data_fdg_fu);
    emci_r_fdg_hypomet = mean(emci_r_data_fdg_bl - emci_r_data_fdg_fu);
    emci_l_av45_amylodosis = mean(emci_l_data_av45_fu - emci_l_data_av45_bl);
    emci_r_av45_amylodosis = mean(emci_r_data_av45_fu - emci_r_data_av45_bl);
    
    %emci_l_fdg_hypomet = emci_l_fdg_bl_avgMat - emci_l_fdg_fu_avgMat;
    %emci_r_fdg_hypomet = emci_r_fdg_bl_avgMat - emci_r_fdg_fu_avgMat;
    %emci_l_av45_amylodosis = emci_l_av45_fu_avgMat - emci_l_av45_bl_avgMat;
    %emci_r_av45_amylodosis = emci_r_av45_fu_avgMat - emci_r_av45_bl_avgMat;
    
    emci_l_ratio = emci_l_fdg_hypomet./emci_l_av45_amylodosis;
    emci_r_ratio = emci_r_fdg_hypomet./emci_r_av45_amylodosis;  
    
    emci_l_fdg_hypomet_bin = emci_l_fdg_hypomet > 0;
    emci_r_fdg_hypomet_bin = emci_r_fdg_hypomet > 0;
    emci_l_av45_amylodosis_bin = emci_l_av45_amylodosis > 0;
    emci_r_av45_amylodosis_bin = emci_r_av45_amylodosis > 0;
    

	emci_l_ratio(not(emci_l_fdg_hypomet_bin & emci_l_av45_amylodosis_bin)) = -1;
	emci_r_ratio(not(emci_r_fdg_hypomet_bin & emci_r_av45_amylodosis_bin)) = -1;
    %emci_l_ratio = emci_l_ratio .* emci_l_fdg_hypomet_bin .* emci_l_av45_amylodosis_bin;
    %emci_r_ratio = emci_r_ratio .* emci_r_fdg_hypomet_bin .* emci_r_av45_amylodosis_bin;
    
end

if (run_lmci)
    lmci_l_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_lmci_bl_left.csv';
    lmci_r_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_lmci_bl_right.csv';
    lmci_l_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_lmci_fu_left.csv';
    lmci_r_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_lmci_fu_right.csv';
    
    lmci_l_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_lmci_bl_left.csv';
    lmci_r_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_lmci_bl_right.csv';
    lmci_l_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_lmci_fu_left.csv';
    lmci_r_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_lmci_fu_right.csv';
    
    lmci_l_data_fdg_bl = buildDataMatrixFromSubjectList(lmci_l_file_fdg_bl);
    lmci_r_data_fdg_bl = buildDataMatrixFromSubjectList(lmci_r_file_fdg_bl);
    
    lmci_l_data_fdg_bl_T = lmci_l_data_fdg_bl';
    lmci_l_fdg_bl_reorderedMatrixToSpacialSpace_temp = lmci_l_data_fdg_bl_T(l_map_dataToSpacial,:);
    lmci_l_fdg_bl_reorderedMatrixToSpacialSpace = lmci_l_fdg_bl_reorderedMatrixToSpacialSpace_temp';
    
    lmci_r_data_fdg_bl_T = lmci_r_data_fdg_bl';
    lmci_r_fdg_bl_reorderedMatrixToSpacialSpace_temp = lmci_r_data_fdg_bl_T(r_map_dataToSpacial,:);
    lmci_r_fdg_bl_reorderedMatrixToSpacialSpace = lmci_r_fdg_bl_reorderedMatrixToSpacialSpace_temp';
    
    lmci_l_fdg_bl_avgMat = getClusterwiseAverage(lmci_l_fdg_bl_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    lmci_r_fdg_bl_avgMat = getClusterwiseAverage(lmci_r_fdg_bl_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    lmci_full_fdg_bl_avgMat = [lmci_l_fdg_bl_avgMat lmci_r_fdg_bl_avgMat];
    
    
    
    lmci_l_data_fdg_fu = buildDataMatrixFromSubjectList(lmci_l_file_fdg_fu);
    lmci_r_data_fdg_fu = buildDataMatrixFromSubjectList(lmci_r_file_fdg_fu);
    
    lmci_l_data_fdg_fu_T = lmci_l_data_fdg_fu';
    lmci_l_fdg_fu_reorderedMatrixToSpacialSpace_temp = lmci_l_data_fdg_fu_T(l_map_dataToSpacial,:);
    lmci_l_fdg_fu_reorderedMatrixToSpacialSpace = lmci_l_fdg_fu_reorderedMatrixToSpacialSpace_temp';
    
    lmci_r_data_fdg_fu_T = lmci_r_data_fdg_fu';
    lmci_r_fdg_fu_reorderedMatrixToSpacialSpace_temp = lmci_r_data_fdg_fu_T(r_map_dataToSpacial,:);
    lmci_r_fdg_fu_reorderedMatrixToSpacialSpace = lmci_r_fdg_fu_reorderedMatrixToSpacialSpace_temp';
    
    lmci_l_fdg_fu_avgMat = getClusterwiseAverage(lmci_l_fdg_fu_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    lmci_r_fdg_fu_avgMat = getClusterwiseAverage(lmci_r_fdg_fu_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    lmci_full_fdg_fu_avgMat = [lmci_l_fdg_fu_avgMat lmci_r_fdg_fu_avgMat];
    
    
    
    lmci_l_data_av45_bl = buildDataMatrixFromSubjectList(lmci_l_file_av45_bl);
    lmci_r_data_av45_bl = buildDataMatrixFromSubjectList(lmci_r_file_av45_bl);
    
    lmci_l_data_av45_bl_T = lmci_l_data_av45_bl';
    lmci_l_av45_bl_reorderedMatrixToSpacialSpace_temp = lmci_l_data_av45_bl_T(l_map_dataToSpacial,:);
    lmci_l_av45_bl_reorderedMatrixToSpacialSpace = lmci_l_av45_bl_reorderedMatrixToSpacialSpace_temp';
    
    lmci_r_data_av45_bl_T = lmci_r_data_av45_bl';
    lmci_r_av45_bl_reorderedMatrixToSpacialSpace_temp = lmci_r_data_av45_bl_T(r_map_dataToSpacial,:);
    lmci_r_av45_bl_reorderedMatrixToSpacialSpace = lmci_r_av45_bl_reorderedMatrixToSpacialSpace_temp';
    
    lmci_l_av45_bl_avgMat = getClusterwiseAverage(lmci_l_av45_bl_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    lmci_r_av45_bl_avgMat = getClusterwiseAverage(lmci_r_av45_bl_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    lmci_full_av45_bl_avgMat = [lmci_l_av45_bl_avgMat lmci_r_av45_bl_avgMat];
    
    
    
    lmci_l_data_av45_fu = buildDataMatrixFromSubjectList(lmci_l_file_av45_fu);
    lmci_r_data_av45_fu = buildDataMatrixFromSubjectList(lmci_r_file_av45_fu);
    
    lmci_l_data_av45_fu_T = lmci_l_data_av45_fu';
    lmci_l_av45_fu_reorderedMatrixToSpacialSpace_temp = lmci_l_data_av45_fu_T(l_map_dataToSpacial,:);
    lmci_l_av45_fu_reorderedMatrixToSpacialSpace = lmci_l_av45_fu_reorderedMatrixToSpacialSpace_temp';
    
    lmci_r_data_av45_fu_T = lmci_r_data_av45_fu';
    lmci_r_av45_fu_reorderedMatrixToSpacialSpace_temp = lmci_r_data_av45_fu_T(r_map_dataToSpacial,:);
    lmci_r_av45_fu_reorderedMatrixToSpacialSpace = lmci_r_av45_fu_reorderedMatrixToSpacialSpace_temp';
    
    lmci_l_av45_fu_avgMat = getClusterwiseAverage(lmci_l_av45_fu_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    lmci_r_av45_fu_avgMat = getClusterwiseAverage(lmci_r_av45_fu_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    lmci_full_av45_fu_avgMat = [lmci_l_av45_fu_avgMat lmci_r_av45_fu_avgMat];
    
    lmci_l_fdg_hypomet = mean(lmci_l_data_fdg_bl - lmci_l_data_fdg_fu);
    lmci_r_fdg_hypomet = mean(lmci_r_data_fdg_bl - lmci_r_data_fdg_fu);
    lmci_l_av45_amylodosis = mean(lmci_l_data_av45_fu - lmci_l_data_av45_bl);
    lmci_r_av45_amylodosis = mean(lmci_r_data_av45_fu - lmci_r_data_av45_bl);    
    
    %lmci_l_fdg_hypomet = lmci_l_fdg_bl_avgMat - lmci_l_fdg_fu_avgMat;
    %lmci_r_fdg_hypomet = lmci_r_fdg_bl_avgMat - lmci_r_fdg_fu_avgMat;
    %lmci_l_av45_amylodosis = lmci_l_av45_fu_avgMat - lmci_l_av45_bl_avgMat;
    %lmci_r_av45_amylodosis = lmci_r_av45_fu_avgMat - lmci_r_av45_bl_avgMat;
    
    lmci_l_ratio = lmci_l_fdg_hypomet./lmci_l_av45_amylodosis;
    lmci_r_ratio = lmci_r_fdg_hypomet./lmci_r_av45_amylodosis;  
    
    lmci_l_fdg_hypomet_bin = lmci_l_fdg_hypomet > 0;
    lmci_r_fdg_hypomet_bin = lmci_r_fdg_hypomet > 0;
    lmci_l_av45_amylodosis_bin = lmci_l_av45_amylodosis > 0;
    lmci_r_av45_amylodosis_bin = lmci_r_av45_amylodosis > 0;
    

	lmci_l_ratio(not(lmci_l_fdg_hypomet_bin & lmci_l_av45_amylodosis_bin)) = -1;
	lmci_r_ratio(not(lmci_r_fdg_hypomet_bin & lmci_r_av45_amylodosis_bin)) = -1;
    %lmci_l_ratio = lmci_l_ratio .* lmci_l_fdg_hypomet_bin .* lmci_l_av45_amylodosis_bin;
    %lmci_r_ratio = lmci_r_ratio .* lmci_r_fdg_hypomet_bin .* lmci_r_av45_amylodosis_bin;
    
    
end

if (run_ad)
    ad_l_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_ad_bl_left.csv';
    ad_r_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_ad_bl_right.csv';
    ad_l_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_ad_fu_left.csv';
    ad_r_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/fdg_ad_fu_right.csv';
    
    ad_l_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_ad_bl_left.csv';
    ad_r_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_ad_bl_right.csv';
    ad_l_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_ad_fu_left.csv';
    ad_r_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs/av45_ad_fu_right.csv';
    
    ad_l_data_fdg_bl = buildDataMatrixFromSubjectList(ad_l_file_fdg_bl);
    ad_r_data_fdg_bl = buildDataMatrixFromSubjectList(ad_r_file_fdg_bl);
    
    ad_l_data_fdg_bl_T = ad_l_data_fdg_bl';
    ad_l_fdg_bl_reorderedMatrixToSpacialSpace_temp = ad_l_data_fdg_bl_T(l_map_dataToSpacial,:);
    ad_l_fdg_bl_reorderedMatrixToSpacialSpace = ad_l_fdg_bl_reorderedMatrixToSpacialSpace_temp';
    
    ad_r_data_fdg_bl_T = ad_r_data_fdg_bl';
    ad_r_fdg_bl_reorderedMatrixToSpacialSpace_temp = ad_r_data_fdg_bl_T(r_map_dataToSpacial,:);
    ad_r_fdg_bl_reorderedMatrixToSpacialSpace = ad_r_fdg_bl_reorderedMatrixToSpacialSpace_temp';
    
    ad_l_fdg_bl_avgMat = getClusterwiseAverage(ad_l_fdg_bl_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    ad_r_fdg_bl_avgMat = getClusterwiseAverage(ad_r_fdg_bl_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    ad_full_fdg_bl_avgMat = [ad_l_fdg_bl_avgMat ad_r_fdg_bl_avgMat];
    
    
    
    ad_l_data_fdg_fu = buildDataMatrixFromSubjectList(ad_l_file_fdg_fu);
    ad_r_data_fdg_fu = buildDataMatrixFromSubjectList(ad_r_file_fdg_fu);
    
    ad_l_data_fdg_fu_T = ad_l_data_fdg_fu';
    ad_l_fdg_fu_reorderedMatrixToSpacialSpace_temp = ad_l_data_fdg_fu_T(l_map_dataToSpacial,:);
    ad_l_fdg_fu_reorderedMatrixToSpacialSpace = ad_l_fdg_fu_reorderedMatrixToSpacialSpace_temp';
    
    ad_r_data_fdg_fu_T = ad_r_data_fdg_fu';
    ad_r_fdg_fu_reorderedMatrixToSpacialSpace_temp = ad_r_data_fdg_fu_T(r_map_dataToSpacial,:);
    ad_r_fdg_fu_reorderedMatrixToSpacialSpace = ad_r_fdg_fu_reorderedMatrixToSpacialSpace_temp';
    
    ad_l_fdg_fu_avgMat = getClusterwiseAverage(ad_l_fdg_fu_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    ad_r_fdg_fu_avgMat = getClusterwiseAverage(ad_r_fdg_fu_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    ad_full_fdg_fu_avgMat = [ad_l_fdg_fu_avgMat ad_r_fdg_fu_avgMat];
    
    
    
    ad_l_data_av45_bl = buildDataMatrixFromSubjectList(ad_l_file_av45_bl);
    ad_r_data_av45_bl = buildDataMatrixFromSubjectList(ad_r_file_av45_bl);
    
    ad_l_data_av45_bl_T = ad_l_data_av45_bl';
    ad_l_av45_bl_reorderedMatrixToSpacialSpace_temp = ad_l_data_av45_bl_T(l_map_dataToSpacial,:);
    ad_l_av45_bl_reorderedMatrixToSpacialSpace = ad_l_av45_bl_reorderedMatrixToSpacialSpace_temp';
    
    ad_r_data_av45_bl_T = ad_r_data_av45_bl';
    ad_r_av45_bl_reorderedMatrixToSpacialSpace_temp = ad_r_data_av45_bl_T(r_map_dataToSpacial,:);
    ad_r_av45_bl_reorderedMatrixToSpacialSpace = ad_r_av45_bl_reorderedMatrixToSpacialSpace_temp';
    
    ad_l_av45_bl_avgMat = getClusterwiseAverage(ad_l_av45_bl_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    ad_r_av45_bl_avgMat = getClusterwiseAverage(ad_r_av45_bl_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    ad_full_av45_bl_avgMat = [ad_l_av45_bl_avgMat ad_r_av45_bl_avgMat];
    
    
    
    ad_l_data_av45_fu = buildDataMatrixFromSubjectList(ad_l_file_av45_fu);
    ad_r_data_av45_fu = buildDataMatrixFromSubjectList(ad_r_file_av45_fu);
    
    ad_l_data_av45_fu_T = ad_l_data_av45_fu';
    ad_l_av45_fu_reorderedMatrixToSpacialSpace_temp = ad_l_data_av45_fu_T(l_map_dataToSpacial,:);
    ad_l_av45_fu_reorderedMatrixToSpacialSpace = ad_l_av45_fu_reorderedMatrixToSpacialSpace_temp';
    
    ad_r_data_av45_fu_T = ad_r_data_av45_fu';
    ad_r_av45_fu_reorderedMatrixToSpacialSpace_temp = ad_r_data_av45_fu_T(r_map_dataToSpacial,:);
    ad_r_av45_fu_reorderedMatrixToSpacialSpace = ad_r_av45_fu_reorderedMatrixToSpacialSpace_temp';
    
    ad_l_av45_fu_avgMat = getClusterwiseAverage(ad_l_av45_fu_reorderedMatrixToSpacialSpace, 1000, l_map_dToS);
    ad_r_av45_fu_avgMat = getClusterwiseAverage(ad_r_av45_fu_reorderedMatrixToSpacialSpace, 1000, r_map_dToS);
    ad_full_av45_fu_avgMat = [ad_l_av45_fu_avgMat ad_r_av45_fu_avgMat];
    
    
    ad_l_fdg_hypomet = mean(ad_l_data_fdg_bl - ad_l_data_fdg_fu);
    ad_r_fdg_hypomet = mean(ad_r_data_fdg_bl - ad_r_data_fdg_fu);
    ad_l_av45_amylodosis = mean(ad_l_data_av45_fu - ad_l_data_av45_bl);
    ad_r_av45_amylodosis = mean(ad_r_data_av45_fu - ad_r_data_av45_bl);
    
    
    %ad_l_fdg_hypomet = ad_l_fdg_bl_avgMat - ad_l_fdg_fu_avgMat;
    %ad_r_fdg_hypomet = ad_r_fdg_bl_avgMat - ad_r_fdg_fu_avgMat;
    %ad_l_av45_amylodosis = ad_l_av45_fu_avgMat - ad_l_av45_bl_avgMat;
    %ad_r_av45_amylodosis = ad_r_av45_fu_avgMat - ad_r_av45_bl_avgMat;
    
    ad_l_ratio = ad_l_fdg_hypomet./ad_l_av45_amylodosis;
    ad_r_ratio = ad_r_fdg_hypomet./ad_r_av45_amylodosis;  
    
    ad_l_fdg_hypomet_bin = ad_l_fdg_hypomet > 0;
    ad_r_fdg_hypomet_bin = ad_r_fdg_hypomet > 0;
    ad_l_av45_amylodosis_bin = ad_l_av45_amylodosis > 0;
    ad_r_av45_amylodosis_bin = ad_r_av45_amylodosis > 0;
    
	ad_l_ratio(not(ad_l_fdg_hypomet_bin & ad_l_av45_amylodosis_bin)) = -1;
	ad_r_ratio(not(ad_r_fdg_hypomet_bin & ad_r_av45_amylodosis_bin)) = -1;
    %ad_l_ratio = ad_l_ratio .* ad_l_fdg_hypomet_bin .* ad_l_av45_amylodosis_bin;
    %ad_r_ratio = ad_r_ratio .* ad_r_fdg_hypomet_bin .* ad_r_av45_amylodosis_bin;
    
end

[t_h, t_p, t_ci, t_stats_ratio_emci_gt_cn_l] = ttest2(emci_l_ratio, cn_l_ratio);
[t_h, t_p, t_ci, t_stats_ratio_emci_gt_cn_r] = ttest2(emci_r_ratio, cn_r_ratio);
[t_h, t_p, t_ci, t_stats_ratio_lmci_gt_emci_l] = ttest2(lmci_l_ratio, emci_l_ratio);
[t_h, t_p, t_ci, t_stats_ratio_lmci_gt_emci_r] = ttest2(lmci_r_ratio, emci_r_ratio);
[t_h, t_p, t_ci, t_stats_ratio_ad_gt_lmci_l] = ttest2(ad_l_ratio, lmci_l_ratio);
[t_h, t_p, t_ci, t_stats_ratio_ad_gt_lmci_r] = ttest2(ad_r_ratio, lmci_r_ratio);

t_stats_ratio_emci_gt_cn_l_f = t_stats_ratio_emci_gt_cn_l.tstat .* cn_l_fdg_hypomet_bin .* cn_l_av45_amylodosis_bin .* emci_l_fdg_hypomet_bin .* emci_l_av45_amylodosis_bin;
t_stats_ratio_emci_gt_cn_r_f = t_stats_ratio_emci_gt_cn_r.tstat .* cn_r_fdg_hypomet_bin .* cn_r_av45_amylodosis_bin .* emci_r_fdg_hypomet_bin .* emci_r_av45_amylodosis_bin;
t_stats_ratio_lmci_gt_emci_l_f = t_stats_ratio_lmci_gt_emci_l.tstat .* emci_l_fdg_hypomet_bin .* emci_l_av45_amylodosis_bin .* lmci_l_fdg_hypomet_bin .* lmci_l_av45_amylodosis_bin;
t_stats_ratio_lmci_gt_emci_r_f = t_stats_ratio_lmci_gt_emci_r.tstat .* emci_r_fdg_hypomet_bin .* emci_r_av45_amylodosis_bin .* lmci_r_fdg_hypomet_bin .* lmci_r_av45_amylodosis_bin;
t_stats_ratio_ad_gt_lmci_l_f = t_stats_ratio_ad_gt_lmci_l.tstat .* lmci_l_fdg_hypomet_bin .* lmci_l_av45_amylodosis_bin .* ad_l_fdg_hypomet_bin .* ad_l_av45_amylodosis_bin;
t_stats_ratio_ad_gt_lmci_r_f = t_stats_ratio_ad_gt_lmci_r.tstat .* lmci_r_fdg_hypomet_bin .* lmci_r_av45_amylodosis_bin .* ad_r_fdg_hypomet_bin .* ad_r_av45_amylodosis_bin;

t_stats_ratio_emci_gt_cn_l_f(find(isnan(t_stats_ratio_emci_gt_cn_l_f))) = 0;
t_stats_ratio_emci_gt_cn_r_f(find(isnan(t_stats_ratio_emci_gt_cn_r_f))) = 0;
t_stats_ratio_lmci_gt_emci_l_f(find(isnan(t_stats_ratio_lmci_gt_emci_l_f))) = 0;
t_stats_ratio_lmci_gt_emci_r_f(find(isnan(t_stats_ratio_lmci_gt_emci_r_f))) = 0;
t_stats_ratio_ad_gt_lmci_l_f(find(isnan(t_stats_ratio_ad_gt_lmci_l_f))) = 0;
t_stats_ratio_ad_gt_lmci_r_f(find(isnan(t_stats_ratio_ad_gt_lmci_r_f))) = 0;

%t_stats_ratio_emci_gt_cn_l_populated = populateClusters(t_stats_ratio_emci_gt_cn_l_f', l_map_dToS);
%t_stats_ratio_emci_gt_cn_l_finalData = t_stats_ratio_emci_gt_cn_l_populated(l_map_SpacialToData,:);
%csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/emci_gt_cn_t_l.txt', t_stats_ratio_emci_gt_cn_l_finalData);

%t_stats_ratio_emci_gt_cn_r_populated = populateClusters(t_stats_ratio_emci_gt_cn_r_f', r_map_dToS);
%t_stats_ratio_emci_gt_cn_r_finalData = t_stats_ratio_emci_gt_cn_r_populated(r_map_SpacialToData,:);
%csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/emci_gt_cn_t_r.txt', t_stats_ratio_emci_gt_cn_r_finalData);

%t_stats_ratio_lmci_gt_emci_l_populated = populateClusters(t_stats_ratio_lmci_gt_emci_l_f', l_map_dToS);
%t_stats_ratio_lmci_gt_emci_l_finalData = t_stats_ratio_lmci_gt_emci_l_populated(l_map_SpacialToData,:);
%csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/lmci_gt_emci_t_l.txt', t_stats_ratio_lmci_gt_emci_l_finalData);

%t_stats_ratio_lmci_gt_emci_r_populated = populateClusters(t_stats_ratio_lmci_gt_emci_r_f', r_map_dToS);
%t_stats_ratio_lmci_gt_emci_r_finalData = t_stats_ratio_lmci_gt_emci_r_populated(r_map_SpacialToData,:);
%csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/lmci_gt_emci_t_r.txt', t_stats_ratio_lmci_gt_emci_r_finalData);

%t_stats_ratio_ad_gt_lmci_l_populated = populateClusters(t_stats_ratio_ad_gt_lmci_l_f', l_map_dToS);
%t_stats_ratio_ad_gt_lmci_l_finalData = t_stats_ratio_ad_gt_lmci_l_populated(l_map_SpacialToData,:);
%csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/ad_gt_lmci_t_l.txt', t_stats_ratio_ad_gt_lmci_l_finalData);

%t_stats_ratio_ad_gt_lmci_r_populated = populateClusters(t_stats_ratio_ad_gt_lmci_r_f', r_map_dToS);
%t_stats_ratio_ad_gt_lmci_r_finalData = t_stats_ratio_ad_gt_lmci_r_populated(r_map_SpacialToData,:);
%csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/ad_gt_lmci_t_r.txt', t_stats_ratio_ad_gt_lmci_r_finalData);


%cn_l_ratio_populated = populateClusters(cn_l_ratio', l_map_dToS);
%cn_l_ratio_finalData = cn_l_ratio_populated(l_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/cn_l_ratio.txt', cn_l_ratio');

%cn_r_ratio_populated = populateClusters(cn_r_ratio', r_map_dToS);
%cn_r_ratio_finalData = cn_r_ratio_populated(r_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/cn_r_ratio.txt', cn_r_ratio');

%emci_l_ratio_populated = populateClusters(emci_l_ratio', l_map_dToS);
%emci_l_ratio_finalData = emci_l_ratio_populated(l_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/emci_l_ratio.txt', emci_l_ratio');

%emci_r_ratio_populated = populateClusters(emci_r_ratio', r_map_dToS);
%emci_r_ratio_finalData = emci_r_ratio_populated(r_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/emci_r_ratio.txt', emci_r_ratio');

%lmci_l_ratio_populated = populateClusters(lmci_l_ratio', l_map_dToS);
%lmci_l_ratio_finalData = lmci_l_ratio_populated(l_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/lmci_l_ratio.txt', lmci_l_ratio');

%lmci_r_ratio_populated = populateClusters(lmci_r_ratio', r_map_dToS);
%lmci_r_ratio_finalData = lmci_r_ratio_populated(r_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/lmci_r_ratio.txt', lmci_r_ratio');

%ad_l_ratio_populated = populateClusters(ad_l_ratio', l_map_dToS);
%ad_l_ratio_finalData = ad_l_ratio_populated(l_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/ad_l_ratio.txt', ad_l_ratio');

%ad_r_ratio_populated = populateClusters(ad_r_ratio', r_map_dToS);
%ad_r_ratio_finalData = ad_r_ratio_populated(r_map_SpacialToData,:);
csvwrite('/home/sulantha/Desktop/avg_sd_for_av45_fdg_sep_2014/TTEST/RatioTTEST_Clusters/ad_r_ratio.txt', ad_r_ratio');


max(t_stats_ratio_emci_gt_cn_l_f)
max(t_stats_ratio_emci_gt_cn_r_f)
max(t_stats_ratio_lmci_gt_emci_l_f)
max(t_stats_ratio_lmci_gt_emci_r_f)
max(t_stats_ratio_ad_gt_lmci_l_f)
max(t_stats_ratio_ad_gt_lmci_r_f)

