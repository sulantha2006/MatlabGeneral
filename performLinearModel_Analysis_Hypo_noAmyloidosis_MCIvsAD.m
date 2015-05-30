run_emci = 1
run_lmci = 1
run_ad = 1
gen_data_tables = 1
run_analysis = 1
run_fdr = 1
get_estimates = 1
get_tstats_fdr = 1
run_writeStats = 1

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

if (gen_data_tables)
    
    [emci_size discard] = size(emci_full_fdg_bl_avgMat);
    [lmci_size discard] = size(lmci_full_fdg_bl_avgMat);
    [ad_size discard] = size(ad_full_fdg_bl_avgMat);
    total_subjects = emci_size + lmci_size + ad_size;
    
    age_vec = [emci_age_data; lmci_age_data; ad_age_data];
    gender_vec = [emci_gender_data; lmci_gender_data; ad_gender_data];
    apoe4_vec = [emci_apoe4_data;lmci_apoe4_data; ad_apoe4_data];
    diagnosis_vector = [ones(emci_size,1)*01; ones(lmci_size,1)*0; ones(ad_size,1)*1];
    
    fdg_bl_matrix = [emci_full_fdg_bl_avgMat; lmci_full_fdg_bl_avgMat; ad_full_fdg_bl_avgMat];
    fdg_fu_matrix = [emci_full_fdg_fu_avgMat; lmci_full_fdg_fu_avgMat; ad_full_fdg_fu_avgMat];
    av45_bl_matrix = [emci_full_av45_bl_avgMat; lmci_full_av45_bl_avgMat; ad_full_av45_bl_avgMat];
    fdg_hypo_matrix = [emci_full_fdg_Yearlyhypomet; lmci_full_fdg_Yearlyhypomet; ad_full_fdg_Yearlyhypomet];
    av45_amy_matrix = [emci_full_av45_Yearlyamyloidosis; lmci_full_av45_Yearlyamyloidosis; ad_full_av45_Yearlyamyloidosis];
        
end

if (run_analysis) 
    main_table = table(age_vec, nominal(gender_vec), nominal(apoe4_vec), nominal(diagnosis_vector), zeros(total_subjects, 1), zeros(total_subjects, 1) ,zeros(total_subjects, 1), zeros(total_subjects, 1), 'VariableNames', {'age','gender','apoe4','diagnosis', 'blFDG','blAV45','yearlyHypo','yearlyAmy'});
    
    pVals_blAV45 = zeros(2000,1);
    pVals_adblAV45 = zeros(2000,1);
        
    eVals_blAV45 = zeros(2000,1);
    eVals_adblAV45 = zeros(2000,1);
        
    tVals_blAV45 = zeros(2000,1);
    tVals_adblAV45 = zeros(2000,1);
        
    for k=1:2000
        for_table = main_table;
        for_table.blFDG = fdg_bl_matrix(:,k);
        for_table.blAV45 = av45_bl_matrix(:,k);
        for_table.yearlyHypo = fdg_hypo_matrix(:,k);
        
        lm = fitlm(for_table, 'yearlyHypo ~ diagnosis*blAV45 + age + gender + apoe4 + blFDG');
        
        pVals_blAV45(k) = lm.Coefficients.pValue(7);
        pVals_adblAV45(k) = lm.Coefficients.pValue(8);
        
        eVals_blAV45(k) = lm.Coefficients.Estimate(7);
        eVals_adblAV45(k) = lm.Coefficients.Estimate(8);
          
        tVals_blAV45(k) = lm.Coefficients.tStat(7);
        tVals_adblAV45(k) = lm.Coefficients.tStat(8);
        
    end
end

if (run_fdr)
    pVals_blAV45_fdr = fdr_bh(pVals_blAV45, 0.1);
    pVals_adblAV45_fdr = fdr_bh(pVals_adblAV45, 0.1);
    
end


if (get_estimates)
    eVals_blAV45_fdr = eVals_blAV45 .* pVals_blAV45_fdr;
    eVals_adblAV45_fdr = eVals_adblAV45 .* pVals_adblAV45_fdr;
end

if (get_tstats_fdr)
    tVals_blAV45_fdr = tVals_blAV45 .* pVals_blAV45_fdr;
    tVals_adblAV45_fdr = tVals_adblAV45 .* pVals_adblAV45_fdr;
end

if (run_writeStats)
    for i = {'blAV45', 'adblAV45'}
       
          s_e = strcat('writeToFile(eVals_',i,'_fdr'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_MCIvsAD/',i,'_lm_fdr_e_l.txt'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_MCIvsAD/',i,'_lm_fdr_e_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_e{1,1});
       
    end

    for i = {'blAV45', 'adblAV45'}
       
          s_t = strcat('writeToFile(tVals_',i,'_fdr'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_MCIvsAD/',i,'_lm_fdr_t_l.txt'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_MCIvsAD/',i,'_lm_fdr_t_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_t{1,1});
       
    end

    for i = {'blAV45', 'adblAV45'}
       
          s_t_f = strcat('writeToFile(tVals_',i,''', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_MCIvsAD/',i,'_lm_full_t_l.txt'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_MCIvsAD/',i,'_lm_full_t_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_t_f{1,1});
       
    end
end