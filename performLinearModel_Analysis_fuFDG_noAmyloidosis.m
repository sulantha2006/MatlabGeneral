run_cn = 1;
run_emci = 1;
run_lmci = 1;
run_ad = 1;
run_analysis = 0;
run_checkcorr = 0;
run_fdr = 0;
get_estimates = 0;
get_tstats_fdr = 0;
get_meanfuFDG = 1;
get_meanAmyloidosis = 0;
run_writeStats = 0;

if (run_cn)
    cn_l_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_cn_bl_left.csv';
    cn_r_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_cn_bl_right.csv';
    cn_l_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_cn_fu_left.csv';
    cn_r_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_cn_fu_right.csv';
    
    cn_l_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_cn_bl_left.csv';
    cn_r_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_cn_bl_right.csv';
    cn_l_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_cn_fu_left.csv';
    cn_r_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_cn_fu_right.csv';
    
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
    
    cn_l_fdg_hypomet = cn_l_fdg_bl_avgMat - cn_l_fdg_fu_avgMat;
    cn_r_fdg_hypomet = cn_r_fdg_bl_avgMat - cn_r_fdg_fu_avgMat;
    cn_full_fdg_hypomet = cn_full_fdg_bl_avgMat - cn_full_fdg_fu_avgMat;
    cn_l_av45_amylodosis = cn_l_av45_fu_avgMat - cn_l_av45_bl_avgMat;
    cn_r_av45_amylodosis = cn_r_av45_fu_avgMat - cn_r_av45_bl_avgMat;
    cn_full_av45_amylodosis = cn_full_av45_fu_avgMat - cn_full_av45_bl_avgMat;
    
    cn_gender_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/cn_gender.csv';
    cn_gender_d = textscan(fopen(cn_gender_file), '%d,%f');
    cn_gender_data = cn_gender_d{1,2};
    
    cn_age_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/cn_bl_age.csv';
    cn_age_d = textscan(fopen(cn_age_file), '%d,%f');
    cn_age_data = cn_age_d{1,2};
    
    cn_apoe4_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/cn_apoe4.csv';
    cn_apoe4_d = textscan(fopen(cn_apoe4_file), '%d,%f');
    cn_apoe4_data = cn_apoe4_d{1,2};
    
    cn_visitDdiffFDG_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/cn_visit_diff.csv';
    cn_visitDdiffFDG_d = textscan(fopen(cn_visitDdiffFDG_file), '%d,%f');
    cn_visitDdiffFDG_data = cn_visitDdiffFDG_d{1,2};
    
    cn_visitDdiffAV45_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/cn_visit_diff_av.csv';
    cn_visitDdiffAV45_d = textscan(fopen(cn_visitDdiffAV45_file), '%d,%f');
    cn_visitDdiffAV45_data = cn_visitDdiffAV45_d{1,2};
    
    cn_full_fdg_Yearlyhypomet = bsxfun(@rdivide, cn_full_fdg_hypomet, cn_visitDdiffFDG_data);
    cn_full_av45_Yearlyamyloidosis = bsxfun(@rdivide, cn_full_av45_amylodosis, cn_visitDdiffAV45_data);
end

if (run_emci)
    emci_l_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_emci_bl_left.csv';
    emci_r_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_emci_bl_right.csv';
    emci_l_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_emci_fu_left.csv';
    emci_r_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_emci_fu_right.csv';
    
    emci_l_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_emci_bl_left.csv';
    emci_r_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_emci_bl_right.csv';
    emci_l_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_emci_fu_left.csv';
    emci_r_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_emci_fu_right.csv';
    
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
    
    emci_l_fdg_hypomet = emci_l_fdg_bl_avgMat - emci_l_fdg_fu_avgMat;
    emci_r_fdg_hypomet = emci_r_fdg_bl_avgMat - emci_r_fdg_fu_avgMat;
    emci_full_fdg_hypomet = emci_full_fdg_bl_avgMat - emci_full_fdg_fu_avgMat;
    emci_l_av45_amylodosis = emci_l_av45_fu_avgMat - emci_l_av45_bl_avgMat;
    emci_r_av45_amylodosis = emci_r_av45_fu_avgMat - emci_r_av45_bl_avgMat;
    emci_full_av45_amylodosis = emci_full_av45_fu_avgMat - emci_full_av45_bl_avgMat;
    
    emci_gender_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/emci_gender.csv';
    emci_gender_d = textscan(fopen(emci_gender_file), '%d,%f');
    emci_gender_data = emci_gender_d{1,2};
    
    emci_age_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/emci_bl_age.csv';
    emci_age_d = textscan(fopen(emci_age_file), '%d,%f');
    emci_age_data = emci_age_d{1,2};
    
    emci_apoe4_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/emci_apoe4.csv';
    emci_apoe4_d = textscan(fopen(emci_apoe4_file), '%d,%f');
    emci_apoe4_data = emci_apoe4_d{1,2};
    
    emci_visitDdiffFDG_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/emci_visit_diff.csv';
    emci_visitDdiffFDG_d = textscan(fopen(emci_visitDdiffFDG_file), '%d,%f');
    emci_visitDdiffFDG_data = emci_visitDdiffFDG_d{1,2};
    
    emci_visitDdiffAV45_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/emci_visit_diff_av.csv';
    emci_visitDdiffAV45_d = textscan(fopen(emci_visitDdiffAV45_file), '%d,%f');
    emci_visitDdiffAV45_data = emci_visitDdiffAV45_d{1,2};
    
    emci_full_fdg_Yearlyhypomet = bsxfun(@rdivide, emci_full_fdg_hypomet, emci_visitDdiffFDG_data);
    emci_full_av45_Yearlyamyloidosis = bsxfun(@rdivide, emci_full_av45_amylodosis, emci_visitDdiffAV45_data);
    
end

if (run_lmci)
    lmci_l_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_lmci_bl_left.csv';
    lmci_r_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_lmci_bl_right.csv';
    lmci_l_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_lmci_fu_left.csv';
    lmci_r_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_lmci_fu_right.csv';
    
    lmci_l_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_lmci_bl_left.csv';
    lmci_r_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_lmci_bl_right.csv';
    lmci_l_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_lmci_fu_left.csv';
    lmci_r_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_lmci_fu_right.csv';
    
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
    
    lmci_l_fdg_hypomet = lmci_l_fdg_bl_avgMat - lmci_l_fdg_fu_avgMat;
    lmci_r_fdg_hypomet = lmci_r_fdg_bl_avgMat - lmci_r_fdg_fu_avgMat;
    lmci_full_fdg_hypomet = lmci_full_fdg_bl_avgMat - lmci_full_fdg_fu_avgMat;
    lmci_l_av45_amylodosis = lmci_l_av45_fu_avgMat - lmci_l_av45_bl_avgMat;
    lmci_r_av45_amylodosis = lmci_r_av45_fu_avgMat - lmci_r_av45_bl_avgMat;
    lmci_full_av45_amylodosis = lmci_full_av45_fu_avgMat - lmci_full_av45_bl_avgMat;
    
    lmci_gender_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/lmci_gender.csv';
    lmci_gender_d = textscan(fopen(lmci_gender_file), '%d,%f');
    lmci_gender_data = lmci_gender_d{1,2};
    
    lmci_age_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/lmci_bl_age.csv';
    lmci_age_d = textscan(fopen(lmci_age_file), '%d,%f');
    lmci_age_data = lmci_age_d{1,2};
    
    lmci_apoe4_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/lmci_apoe4.csv';
    lmci_apoe4_d = textscan(fopen(lmci_apoe4_file), '%d,%f');
    lmci_apoe4_data = lmci_apoe4_d{1,2};
    
    lmci_visitDdiffFDG_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/lmci_visit_diff.csv';
    lmci_visitDdiffFDG_d = textscan(fopen(lmci_visitDdiffFDG_file), '%d,%f');
    lmci_visitDdiffFDG_data = lmci_visitDdiffFDG_d{1,2};
    
    lmci_visitDdiffAV45_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/lmci_visit_diff_av.csv';
    lmci_visitDdiffAV45_d = textscan(fopen(lmci_visitDdiffAV45_file), '%d,%f');
    lmci_visitDdiffAV45_data = lmci_visitDdiffAV45_d{1,2};
    
    lmci_full_fdg_Yearlyhypomet = bsxfun(@rdivide, lmci_full_fdg_hypomet, lmci_visitDdiffFDG_data);
    lmci_full_av45_Yearlyamyloidosis = bsxfun(@rdivide, lmci_full_av45_amylodosis, lmci_visitDdiffAV45_data);
end

if (run_ad)
    ad_l_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_ad_bl_left.csv';
    ad_r_file_fdg_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_ad_bl_right.csv';
    ad_l_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_ad_fu_left.csv';
    ad_r_file_fdg_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/fdg_ad_fu_right.csv';
    
    ad_l_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_ad_bl_left.csv';
    ad_r_file_av45_bl = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_ad_bl_right.csv';
    ad_l_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_ad_fu_left.csv';
    ad_r_file_av45_fu = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/GLIMs_diffuseBlur/av45_ad_fu_right.csv';
    
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
    
    ad_l_fdg_hypomet = ad_l_fdg_bl_avgMat - ad_l_fdg_fu_avgMat;
    ad_r_fdg_hypomet = ad_r_fdg_bl_avgMat - ad_r_fdg_fu_avgMat;
    ad_full_fdg_hypomet = ad_full_fdg_bl_avgMat - ad_full_fdg_fu_avgMat;
    ad_l_av45_amylodosis = ad_l_av45_fu_avgMat - ad_l_av45_bl_avgMat;
    ad_r_av45_amylodosis = ad_r_av45_fu_avgMat - ad_r_av45_bl_avgMat;
    ad_full_av45_amylodosis = ad_full_av45_fu_avgMat - ad_full_av45_bl_avgMat;
    
    ad_gender_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/ad_gender.csv';
    ad_gender_d = textscan(fopen(ad_gender_file), '%d,%f');
    ad_gender_data = ad_gender_d{1,2};
    
    ad_age_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/ad_bl_age.csv';
    ad_age_d = textscan(fopen(ad_age_file), '%d,%f');
    ad_age_data = ad_age_d{1,2};
    
    ad_apoe4_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/ad_apoe4.csv';
    ad_apoe4_d = textscan(fopen(ad_apoe4_file), '%d,%f');
    ad_apoe4_data = ad_apoe4_d{1,2};
    
    ad_visitDdiffFDG_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/ad_visit_diff.csv';
    ad_visitDdiffFDG_d = textscan(fopen(ad_visitDdiffFDG_file), '%d,%f');
    ad_visitDdiffFDG_data = ad_visitDdiffFDG_d{1,2};
    
    ad_visitDdiffAV45_file = '/data/data03/sulantha/VertstatsFiles_Network_Analsis/Subject_meta/ad_visit_diff_av.csv';
    ad_visitDdiffAV45_d = textscan(fopen(ad_visitDdiffAV45_file), '%d,%f');
    ad_visitDdiffAV45_data = ad_visitDdiffAV45_d{1,2};
    
    ad_full_fdg_Yearlyhypomet = bsxfun(@rdivide, ad_full_fdg_hypomet, ad_visitDdiffFDG_data);
    ad_full_av45_Yearlyamyloidosis = bsxfun(@rdivide, ad_full_av45_amylodosis, ad_visitDdiffAV45_data);
end

if (run_analysis)
    cn_full_lm_blFDG_p_list = zeros(1,2000);
    cn_full_lm_blAV45_p_list = zeros(1,2000);
    cn_full_lm_age_p_list = zeros(1,2000);
    cn_full_lm_gender_p_list = zeros(1,2000);
    cn_full_lm_apoe4_p_list = zeros(1,2000);
    cn_full_lm_visitDdiffFDG_p_list = zeros(1,2000);

    cn_full_lm_blFDG_t_list = zeros(1,2000);
    cn_full_lm_blAV45_t_list = zeros(1,2000);
    cn_full_lm_age_t_list = zeros(1,2000);
    cn_full_lm_gender_t_list = zeros(1,2000);
    cn_full_lm_apoe4_t_list = zeros(1,2000);
    cn_full_lm_visitDdiffFDG_t_list = zeros(1,2000);

    cn_full_lm_blFDG_e_list = zeros(1,2000);
    cn_full_lm_blAV45_e_list = zeros(1,2000);
    cn_full_lm_age_e_list = zeros(1,2000);
    cn_full_lm_gender_e_list = zeros(1,2000);
    cn_full_lm_apoe4_e_list = zeros(1,2000);
    cn_full_lm_visitDdiffFDG_e_list = zeros(1,2000);

    parfor k = 1:2000
        cn_full_XMat = [cn_full_fdg_bl_avgMat(:,k) cn_full_av45_bl_avgMat(:,k) cn_age_data cn_gender_data cn_apoe4_data cn_visitDdiffFDG_data];
        cn_full_lm = LinearModel.fit(cn_full_XMat, cn_full_fdg_fu_avgMat(:,k), 'CategoricalVars', [4,5]);

        cn_full_lm_blFDG_p_list(k) = cn_full_lm.Coefficients.pValue(2);
        cn_full_lm_blAV45_p_list(k) = cn_full_lm.Coefficients.pValue(3);
        cn_full_lm_age_p_list(k) = cn_full_lm.Coefficients.pValue(4);
        cn_full_lm_gender_p_list(k) = cn_full_lm.Coefficients.pValue(5);
        cn_full_lm_apoe4_p_list(k) = cn_full_lm.Coefficients.pValue(6);
        cn_full_lm_visitDdiffFDG_p_list(k) = cn_full_lm.Coefficients.pValue(7);

        cn_full_lm_blFDG_t_list(k) = cn_full_lm.Coefficients.tStat(2);
        cn_full_lm_blAV45_t_list(k) = cn_full_lm.Coefficients.tStat(3);
        cn_full_lm_age_t_list(k) = cn_full_lm.Coefficients.tStat(4);
        cn_full_lm_gender_t_list(k) = cn_full_lm.Coefficients.tStat(5);
        cn_full_lm_apoe4_t_list(k) = cn_full_lm.Coefficients.tStat(6);
        cn_full_lm_visitDdiffFDG_t_list(k) = cn_full_lm.Coefficients.tStat(7);

        cn_full_lm_blFDG_e_list(k) = cn_full_lm.Coefficients.Estimate(2);
        cn_full_lm_blAV45_e_list(k) = cn_full_lm.Coefficients.Estimate(3);
        cn_full_lm_age_e_list(k) = cn_full_lm.Coefficients.Estimate(4);
        cn_full_lm_gender_e_list(k) = cn_full_lm.Coefficients.Estimate(5);
        cn_full_lm_apoe4_e_list(k) = cn_full_lm.Coefficients.Estimate(6);
        cn_full_lm_visitDdiffFDG_e_list(k) = cn_full_lm.Coefficients.Estimate(7);

    end


    emci_full_lm_blFDG_p_list = zeros(1,2000);
    emci_full_lm_blAV45_p_list = zeros(1,2000);
    emci_full_lm_age_p_list = zeros(1,2000);
    emci_full_lm_gender_p_list = zeros(1,2000);
    emci_full_lm_apoe4_p_list = zeros(1,2000);
    emci_full_lm_visitDdiffFDG_p_list = zeros(1,2000);

    emci_full_lm_blFDG_t_list = zeros(1,2000);
    emci_full_lm_blAV45_t_list = zeros(1,2000);
    emci_full_lm_age_t_list = zeros(1,2000);
    emci_full_lm_gender_t_list = zeros(1,2000);
    emci_full_lm_apoe4_t_list = zeros(1,2000);
    emci_full_lm_visitDdiffFDG_t_list = zeros(1,2000);

    emci_full_lm_blFDG_e_list = zeros(1,2000);
    emci_full_lm_blAV45_e_list = zeros(1,2000);
    emci_full_lm_age_e_list = zeros(1,2000);
    emci_full_lm_gender_e_list = zeros(1,2000);
    emci_full_lm_apoe4_e_list = zeros(1,2000);
    emci_full_lm_visitDdiffFDG_e_list = zeros(1,2000);

    parfor k = 1:2000
        emci_full_XMat = [emci_full_fdg_bl_avgMat(:,k) emci_full_av45_bl_avgMat(:,k) emci_age_data emci_gender_data emci_apoe4_data emci_visitDdiffFDG_data];
        emci_full_lm = LinearModel.fit(emci_full_XMat, emci_full_fdg_fu_avgMat(:,k), 'CategoricalVars', [4,5]);

        emci_full_lm_blFDG_p_list(k) = emci_full_lm.Coefficients.pValue(2);
        emci_full_lm_blAV45_p_list(k) = emci_full_lm.Coefficients.pValue(3);
        emci_full_lm_age_p_list(k) = emci_full_lm.Coefficients.pValue(4);
        emci_full_lm_gender_p_list(k) = emci_full_lm.Coefficients.pValue(5);
        emci_full_lm_apoe4_p_list(k) = emci_full_lm.Coefficients.pValue(6);
        emci_full_lm_visitDdiffFDG_p_list(k) = emci_full_lm.Coefficients.pValue(7);

        emci_full_lm_blFDG_t_list(k) = emci_full_lm.Coefficients.tStat(2);
        emci_full_lm_blAV45_t_list(k) = emci_full_lm.Coefficients.tStat(3);
        emci_full_lm_age_t_list(k) = emci_full_lm.Coefficients.tStat(4);
        emci_full_lm_gender_t_list(k) = emci_full_lm.Coefficients.tStat(5);
        emci_full_lm_apoe4_t_list(k) = emci_full_lm.Coefficients.tStat(6);
        emci_full_lm_visitDdiffFDG_t_list(k) = emci_full_lm.Coefficients.tStat(7);

        emci_full_lm_blFDG_e_list(k) = emci_full_lm.Coefficients.Estimate(2);
        emci_full_lm_blAV45_e_list(k) = emci_full_lm.Coefficients.Estimate(3);
        emci_full_lm_age_e_list(k) = emci_full_lm.Coefficients.Estimate(4);
        emci_full_lm_gender_e_list(k) = emci_full_lm.Coefficients.Estimate(5);
        emci_full_lm_apoe4_e_list(k) = emci_full_lm.Coefficients.Estimate(6);
        emci_full_lm_visitDdiffFDG_e_list(k) = emci_full_lm.Coefficients.Estimate(7);

    end

    
    lmci_full_lm_blFDG_p_list = zeros(1,2000);
    lmci_full_lm_blAV45_p_list = zeros(1,2000);
    lmci_full_lm_age_p_list = zeros(1,2000);
    lmci_full_lm_gender_p_list = zeros(1,2000);
    lmci_full_lm_apoe4_p_list = zeros(1,2000);
    lmci_full_lm_visitDdiffFDG_p_list = zeros(1,2000);

    lmci_full_lm_blFDG_t_list = zeros(1,2000);
    lmci_full_lm_blAV45_t_list = zeros(1,2000);
    lmci_full_lm_age_t_list = zeros(1,2000);
    lmci_full_lm_gender_t_list = zeros(1,2000);
    lmci_full_lm_apoe4_t_list = zeros(1,2000);
    lmci_full_lm_visitDdiffFDG_t_list = zeros(1,2000);

    lmci_full_lm_blFDG_e_list = zeros(1,2000);
    lmci_full_lm_blAV45_e_list = zeros(1,2000);
    lmci_full_lm_age_e_list = zeros(1,2000);
    lmci_full_lm_gender_e_list = zeros(1,2000);
    lmci_full_lm_apoe4_e_list = zeros(1,2000);
    lmci_full_lm_visitDdiffFDG_e_list = zeros(1,2000);

    parfor k = 1:2000
        lmci_full_XMat = [lmci_full_fdg_bl_avgMat(:,k) lmci_full_av45_bl_avgMat(:,k) lmci_age_data lmci_gender_data lmci_apoe4_data lmci_visitDdiffFDG_data];
        lmci_full_lm = LinearModel.fit(lmci_full_XMat, lmci_full_fdg_fu_avgMat(:,k), 'CategoricalVars', [4,5]);

        lmci_full_lm_blFDG_p_list(k) = lmci_full_lm.Coefficients.pValue(2);
        lmci_full_lm_blAV45_p_list(k) = lmci_full_lm.Coefficients.pValue(3);
        lmci_full_lm_age_p_list(k) = lmci_full_lm.Coefficients.pValue(4);
        lmci_full_lm_gender_p_list(k) = lmci_full_lm.Coefficients.pValue(5);
        lmci_full_lm_apoe4_p_list(k) = lmci_full_lm.Coefficients.pValue(6);
        lmci_full_lm_visitDdiffFDG_p_list(k) = lmci_full_lm.Coefficients.pValue(7);

        lmci_full_lm_blFDG_t_list(k) = lmci_full_lm.Coefficients.tStat(2);
        lmci_full_lm_blAV45_t_list(k) = lmci_full_lm.Coefficients.tStat(3);
        lmci_full_lm_age_t_list(k) = lmci_full_lm.Coefficients.tStat(4);
        lmci_full_lm_gender_t_list(k) = lmci_full_lm.Coefficients.tStat(5);
        lmci_full_lm_apoe4_t_list(k) = lmci_full_lm.Coefficients.tStat(6);
        lmci_full_lm_visitDdiffFDG_t_list(k) = lmci_full_lm.Coefficients.tStat(7);

        lmci_full_lm_blFDG_e_list(k) = lmci_full_lm.Coefficients.Estimate(2);
        lmci_full_lm_blAV45_e_list(k) = lmci_full_lm.Coefficients.Estimate(3);
        lmci_full_lm_age_e_list(k) = lmci_full_lm.Coefficients.Estimate(4);
        lmci_full_lm_gender_e_list(k) = lmci_full_lm.Coefficients.Estimate(5);
        lmci_full_lm_apoe4_e_list(k) = lmci_full_lm.Coefficients.Estimate(6);
        lmci_full_lm_visitDdiffFDG_e_list(k) = lmci_full_lm.Coefficients.Estimate(7);

    end

    
    ad_full_lm_blFDG_p_list = zeros(1,2000);
    ad_full_lm_blAV45_p_list = zeros(1,2000);
    ad_full_lm_age_p_list = zeros(1,2000);
    ad_full_lm_gender_p_list = zeros(1,2000);
    ad_full_lm_apoe4_p_list = zeros(1,2000);
    ad_full_lm_visitDdiffFDG_p_list = zeros(1,2000);

    ad_full_lm_blFDG_t_list = zeros(1,2000);
    ad_full_lm_blAV45_t_list = zeros(1,2000);
    ad_full_lm_age_t_list = zeros(1,2000);
    ad_full_lm_gender_t_list = zeros(1,2000);
    ad_full_lm_apoe4_t_list = zeros(1,2000);
    ad_full_lm_visitDdiffFDG_t_list = zeros(1,2000);

    ad_full_lm_blFDG_e_list = zeros(1,2000);
    ad_full_lm_blAV45_e_list = zeros(1,2000);
    ad_full_lm_age_e_list = zeros(1,2000);
    ad_full_lm_gender_e_list = zeros(1,2000);
    ad_full_lm_apoe4_e_list = zeros(1,2000);
    ad_full_lm_visitDdiffFDG_e_list = zeros(1,2000);

    parfor k = 1:2000
        ad_full_XMat = [ad_full_fdg_bl_avgMat(:,k) ad_full_av45_bl_avgMat(:,k) ad_age_data ad_gender_data ad_apoe4_data ad_visitDdiffFDG_data];
        ad_full_lm = LinearModel.fit(ad_full_XMat, ad_full_fdg_fu_avgMat(:,k), 'CategoricalVars', [4,5]);

        ad_full_lm_blFDG_p_list(k) = ad_full_lm.Coefficients.pValue(2);
        ad_full_lm_blAV45_p_list(k) = ad_full_lm.Coefficients.pValue(3);
        ad_full_lm_age_p_list(k) = ad_full_lm.Coefficients.pValue(4);
        ad_full_lm_gender_p_list(k) = ad_full_lm.Coefficients.pValue(5);
        ad_full_lm_apoe4_p_list(k) = ad_full_lm.Coefficients.pValue(6);
        ad_full_lm_visitDdiffFDG_p_list(k) = ad_full_lm.Coefficients.pValue(7);

        ad_full_lm_blFDG_t_list(k) = ad_full_lm.Coefficients.tStat(2);
        ad_full_lm_blAV45_t_list(k) = ad_full_lm.Coefficients.tStat(3);
        ad_full_lm_age_t_list(k) = ad_full_lm.Coefficients.tStat(4);
        ad_full_lm_gender_t_list(k) = ad_full_lm.Coefficients.tStat(5);
        ad_full_lm_apoe4_t_list(k) = ad_full_lm.Coefficients.tStat(6);
        ad_full_lm_visitDdiffFDG_t_list(k) = ad_full_lm.Coefficients.tStat(7);

        ad_full_lm_blFDG_e_list(k) = ad_full_lm.Coefficients.Estimate(2);
        ad_full_lm_blAV45_e_list(k) = ad_full_lm.Coefficients.Estimate(3);
        ad_full_lm_age_e_list(k) = ad_full_lm.Coefficients.Estimate(4);
        ad_full_lm_gender_e_list(k) = ad_full_lm.Coefficients.Estimate(5);
        ad_full_lm_apoe4_e_list(k) = ad_full_lm.Coefficients.Estimate(6);
        ad_full_lm_visitDdiffFDG_e_list(k) = ad_full_lm.Coefficients.Estimate(7);
    end

end

if (run_checkcorr)
    cn_avbl_avdelta_corrVal = zeros(1,2000);
    cn_avbl_avdelta_corrValp = ones(1,2000);
    for k=1:2000
        [cn_avbl_avdelta_corrVal(k), cn_avbl_avdelta_corrValp(k)] = corr(cn_full_av45_amylodosis(:,k),cn_full_av45_bl_avgMat(:,k));
    end
    
    emci_avbl_avdelta_corrVal = zeros(1,2000);
    emci_avbl_avdelta_corrValp = ones(1,2000);
    for k=1:2000
        [emci_avbl_avdelta_corrVal(k), emci_avbl_avdelta_corrValp(k)] = corr(emci_full_av45_amylodosis(:,k),emci_full_av45_bl_avgMat(:,k));
    end
    
    lmci_avbl_avdelta_corrVal = zeros(1,2000);
    lmci_avbl_avdelta_corrValp = ones(1,2000);
    for k=1:2000
        [lmci_avbl_avdelta_corrVal(k), lmci_avbl_avdelta_corrValp(k)] = corr(lmci_full_av45_amylodosis(:,k),lmci_full_av45_bl_avgMat(:,k));
    end
    
    ad_avbl_avdelta_corrVal = zeros(1,2000);
    ad_avbl_avdelta_corrValp = ones(1,2000);
    for k=1:2000
        [ad_avbl_avdelta_corrVal(k), ad_avbl_avdelta_corrValp(k)] = corr(ad_full_av45_amylodosis(:,k),ad_full_av45_bl_avgMat(:,k));
    end
end

if (run_fdr)
    blFDG_p_list = [cn_full_lm_blFDG_p_list; emci_full_lm_blFDG_p_list; lmci_full_lm_blFDG_p_list; ad_full_lm_blFDG_p_list];
    blAV45_p_list = [cn_full_lm_blAV45_p_list; emci_full_lm_blAV45_p_list; lmci_full_lm_blAV45_p_list; ad_full_lm_blAV45_p_list];
    age_p_list = [cn_full_lm_age_p_list; emci_full_lm_age_p_list; lmci_full_lm_age_p_list; ad_full_lm_age_p_list];
    gender_p_list = [cn_full_lm_gender_p_list; emci_full_lm_gender_p_list; lmci_full_lm_gender_p_list; ad_full_lm_gender_p_list];
    apoe4_p_list = [cn_full_lm_apoe4_p_list; emci_full_lm_apoe4_p_list; lmci_full_lm_apoe4_p_list; ad_full_lm_apoe4_p_list];
    visitDdiffFDG_p_list = [cn_full_lm_visitDdiffFDG_p_list; emci_full_lm_visitDdiffFDG_p_list; lmci_full_lm_visitDdiffFDG_p_list; ad_full_lm_visitDdiffFDG_p_list];

    blFDG_p_list_fdr = fdr_bh(blFDG_p_list, 0.1);
    blAV45_p_list_fdr = fdr_bh(blAV45_p_list, 0.1);
    age_p_list_fdr = fdr_bh(age_p_list, 0.1);
    gender_p_list_fdr = fdr_bh(gender_p_list, 0.1);
    apoe4_p_list_fdr = fdr_bh(apoe4_p_list, 0.1);
    visitDdiffFDG_p_list_fdr = fdr_bh(visitDdiffFDG_p_list, 0.1);
    
end


if (get_estimates)
    cn_full_lm_blFDG_e_list_fdr = cn_full_lm_blFDG_e_list .* blFDG_p_list_fdr(1,:);
    emci_full_lm_blFDG_e_list_fdr = emci_full_lm_blFDG_e_list .* blFDG_p_list_fdr(2,:);
    lmci_full_lm_blFDG_e_list_fdr = lmci_full_lm_blFDG_e_list .* blFDG_p_list_fdr(3,:);
    ad_full_lm_blFDG_e_list_fdr = ad_full_lm_blFDG_e_list .* blFDG_p_list_fdr(4,:);
    
    cn_full_lm_blAV45_e_list_fdr = cn_full_lm_blAV45_e_list .* blAV45_p_list_fdr(1,:);
    emci_full_lm_blAV45_e_list_fdr = emci_full_lm_blAV45_e_list .* blAV45_p_list_fdr(2,:);
    lmci_full_lm_blAV45_e_list_fdr = lmci_full_lm_blAV45_e_list .* blAV45_p_list_fdr(3,:);
    ad_full_lm_blAV45_e_list_fdr = ad_full_lm_blAV45_e_list .* blAV45_p_list_fdr(4,:);
      
    cn_full_lm_age_e_list_fdr = cn_full_lm_age_e_list .* age_p_list_fdr(1,:);
    emci_full_lm_age_e_list_fdr = emci_full_lm_age_e_list .* age_p_list_fdr(2,:);
    lmci_full_lm_age_e_list_fdr = lmci_full_lm_age_e_list .* age_p_list_fdr(3,:);
    ad_full_lm_age_e_list_fdr = ad_full_lm_age_e_list .* age_p_list_fdr(4,:);
    
    cn_full_lm_gender_e_list_fdr = cn_full_lm_gender_e_list .* gender_p_list_fdr(1,:);
    emci_full_lm_gender_e_list_fdr = emci_full_lm_gender_e_list .* gender_p_list_fdr(2,:);
    lmci_full_lm_gender_e_list_fdr = lmci_full_lm_gender_e_list .* gender_p_list_fdr(3,:);
    ad_full_lm_gender_e_list_fdr = ad_full_lm_gender_e_list .* gender_p_list_fdr(4,:);
    
    cn_full_lm_apoe4_e_list_fdr = cn_full_lm_apoe4_e_list .* apoe4_p_list_fdr(1,:);
    emci_full_lm_apoe4_e_list_fdr = emci_full_lm_apoe4_e_list .* apoe4_p_list_fdr(2,:);
    lmci_full_lm_apoe4_e_list_fdr = lmci_full_lm_apoe4_e_list .* apoe4_p_list_fdr(3,:);
    ad_full_lm_apoe4_e_list_fdr = ad_full_lm_apoe4_e_list .* apoe4_p_list_fdr(4,:);
    
    cn_full_lm_visitDdiffFDG_e_list_fdr = cn_full_lm_visitDdiffFDG_e_list .* visitDdiffFDG_p_list_fdr(1,:);
    emci_full_lm_visitDdiffFDG_e_list_fdr = emci_full_lm_visitDdiffFDG_e_list .* visitDdiffFDG_p_list_fdr(2,:);
    lmci_full_lm_visitDdiffFDG_e_list_fdr = lmci_full_lm_visitDdiffFDG_e_list .* visitDdiffFDG_p_list_fdr(3,:);
    ad_full_lm_visitDdiffFDG_e_list_fdr = ad_full_lm_visitDdiffFDG_e_list .* visitDdiffFDG_p_list_fdr(4,:);
end

if (get_tstats_fdr)
    cn_full_lm_blFDG_t_list_fdr = cn_full_lm_blFDG_t_list .* blFDG_p_list_fdr(1,:);
    emci_full_lm_blFDG_t_list_fdr = emci_full_lm_blFDG_t_list .* blFDG_p_list_fdr(2,:);
    lmci_full_lm_blFDG_t_list_fdr = lmci_full_lm_blFDG_t_list .* blFDG_p_list_fdr(3,:);
    ad_full_lm_blFDG_t_list_fdr = ad_full_lm_blFDG_t_list .* blFDG_p_list_fdr(4,:);
    
    cn_full_lm_blAV45_t_list_fdr = cn_full_lm_blAV45_t_list .* blAV45_p_list_fdr(1,:);
    emci_full_lm_blAV45_t_list_fdr = emci_full_lm_blAV45_t_list .* blAV45_p_list_fdr(2,:);
    lmci_full_lm_blAV45_t_list_fdr = lmci_full_lm_blAV45_t_list .* blAV45_p_list_fdr(3,:);
    ad_full_lm_blAV45_t_list_fdr = ad_full_lm_blAV45_t_list .* blAV45_p_list_fdr(4,:);
    
    cn_full_lm_age_t_list_fdr = cn_full_lm_age_t_list .* age_p_list_fdr(1,:);
    emci_full_lm_age_t_list_fdr = emci_full_lm_age_t_list .* age_p_list_fdr(2,:);
    lmci_full_lm_age_t_list_fdr = lmci_full_lm_age_t_list .* age_p_list_fdr(3,:);
    ad_full_lm_age_t_list_fdr = ad_full_lm_age_t_list .* age_p_list_fdr(4,:);
    
    cn_full_lm_gender_t_list_fdr = cn_full_lm_gender_t_list .* gender_p_list_fdr(1,:);
    emci_full_lm_gender_t_list_fdr = emci_full_lm_gender_t_list .* gender_p_list_fdr(2,:);
    lmci_full_lm_gender_t_list_fdr = lmci_full_lm_gender_t_list .* gender_p_list_fdr(3,:);
    ad_full_lm_gender_t_list_fdr = ad_full_lm_gender_t_list .* gender_p_list_fdr(4,:);
    
    cn_full_lm_apoe4_t_list_fdr = cn_full_lm_apoe4_t_list .* apoe4_p_list_fdr(1,:);
    emci_full_lm_apoe4_t_list_fdr = emci_full_lm_apoe4_t_list .* apoe4_p_list_fdr(2,:);
    lmci_full_lm_apoe4_t_list_fdr = lmci_full_lm_apoe4_t_list .* apoe4_p_list_fdr(3,:);
    ad_full_lm_apoe4_t_list_fdr = ad_full_lm_apoe4_t_list .* apoe4_p_list_fdr(4,:);
    
    cn_full_lm_visitDdiffFDG_t_list_fdr = cn_full_lm_visitDdiffFDG_t_list .* visitDdiffFDG_p_list_fdr(1,:);
    emci_full_lm_visitDdiffFDG_t_list_fdr = emci_full_lm_visitDdiffFDG_t_list .* visitDdiffFDG_p_list_fdr(2,:);
    lmci_full_lm_visitDdiffFDG_t_list_fdr = lmci_full_lm_visitDdiffFDG_t_list .* visitDdiffFDG_p_list_fdr(3,:);
    ad_full_lm_visitDdiffFDG_t_list_fdr = ad_full_lm_visitDdiffFDG_t_list .* visitDdiffFDG_p_list_fdr(4,:);
end

if (get_meanfuFDG)
    writeToFile(mean(cn_full_fdg_fu_avgMat), '/home/sulantha/Desktop/linear_model_sept2014/Mean_fuFDG/cn_meanFuFDG_l.txt', '/home/sulantha/Desktop/linear_model_sept2014/Mean_fuFDG/cn_meanFuFDG_r.txt',l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);
    writeToFile(mean(emci_full_fdg_fu_avgMat), '/home/sulantha/Desktop/linear_model_sept2014/Mean_fuFDG/emci_meanFuFDG_l.txt', '/home/sulantha/Desktop/linear_model_sept2014/Mean_fuFDG/emci_meanFuFDG_r.txt',l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);
    writeToFile(mean(lmci_full_fdg_fu_avgMat), '/home/sulantha/Desktop/linear_model_sept2014/Mean_fuFDG/lmci_meanFuFDG_l.txt', '/home/sulantha/Desktop/linear_model_sept2014/Mean_fuFDG/lmci_meanFuFDG_r.txt',l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData)
    writeToFile(mean(ad_full_fdg_fu_avgMat), '/home/sulantha/Desktop/linear_model_sept2014/Mean_fuFDG/ad_meanFuFDG_l.txt', '/home/sulantha/Desktop/linear_model_sept2014/Mean_fuFDG/ad_meanFuFDG_r.txt',l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);

end

if (get_meanAmyloidosis)
    writeToFile(mean(cn_full_av45_amylodosis), '/home/sulantha/Desktop/linear_model_sept2014/Mean_Amyloidosis/cn_meanAmyloidosis_l.txt', '/home/sulantha/Desktop/linear_model_sept2014/Mean_Amyloidosis/cn_meanAmyloidosis_r.txt',l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);
    writeToFile(mean(emci_full_av45_amylodosis), '/home/sulantha/Desktop/linear_model_sept2014/Mean_Amyloidosis/emci_meanAmyloidosis_l.txt', '/home/sulantha/Desktop/linear_model_sept2014/Mean_Amyloidosis/emci_meanAmyloidosis_r.txt',l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);
    writeToFile(mean(lmci_full_av45_amylodosis), '/home/sulantha/Desktop/linear_model_sept2014/Mean_Amyloidosis/lmci_meanAmyloidosis_l.txt', '/home/sulantha/Desktop/linear_model_sept2014/Mean_Amyloidosis/lmci_meanAmyloidosis_r.txt',l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData)
    writeToFile(mean(ad_full_av45_amylodosis), '/home/sulantha/Desktop/linear_model_sept2014/Mean_Amyloidosis/ad_meanAmyloidosis_l.txt', '/home/sulantha/Desktop/linear_model_sept2014/Mean_Amyloidosis/ad_meanAmyloidosis_r.txt',l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);


end

if (run_writeStats)
    for i = {'cn', 'emci', 'lmci', 'ad'}
       for j = {'blFDG' , 'blAV45' , 'age' , 'gender' , 'apoe4' , 'visitDdiffFDG'}
          s_e = strcat('writeToFile(',i,'_full_lm_',j,'_e_list_fdr, ''/home/sulantha/Desktop/linear_model_sept2014/Wo_Int_fuFDG_diffBlur_noAmyloidosis/',i,'_lm_',j,'_fdr_e_l.txt'', ''/home/sulantha/Desktop/linear_model_sept2014/Wo_Int_fuFDG_diffBlur_noAmyloidosis/',i,'_lm_',j,'_fdr_e_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_e{1,1});
       end
    end

    for i = {'cn', 'emci', 'lmci', 'ad'}
       for j = {'blFDG' , 'blAV45' , 'age' , 'gender' , 'apoe4' , 'visitDdiffFDG'}
          s_t = strcat('writeToFile(',i,'_full_lm_',j,'_t_list_fdr, ''/home/sulantha/Desktop/linear_model_sept2014/Wo_Int_fuFDG_diffBlur_noAmyloidosis/',i,'_lm_',j,'_fdr_t_l.txt'', ''/home/sulantha/Desktop/linear_model_sept2014/Wo_Int_fuFDG_diffBlur_noAmyloidosis/',i,'_lm_',j,'_fdr_t_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_t{1,1});
       end
    end

    for i = {'cn', 'emci', 'lmci', 'ad'}
       for j = {'blFDG' , 'blAV45' , 'age' , 'gender' , 'apoe4' , 'visitDdiffFDG'}
          s_t_f = strcat('writeToFile(',i,'_full_lm_',j,'_t_list, ''/home/sulantha/Desktop/linear_model_sept2014/Wo_Int_fuFDG_diffBlur_noAmyloidosis/',i,'_lm_',j,'_full_t_l.txt'', ''/home/sulantha/Desktop/linear_model_sept2014/Wo_Int_fuFDG_diffBlur_noAmyloidosis/',i,'_lm_',j,'_full_t_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_t_f{1,1});
       end
    end
end
