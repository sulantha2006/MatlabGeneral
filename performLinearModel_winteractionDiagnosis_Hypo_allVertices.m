run_cn = 1;
run_emci = 1;
run_lmci = 1;
run_ad = 1;
gen_data_tables = 1;
run_analysis = 1;
run_fdr = 1;
get_estimates = 1;
get_tstats_fdr = 1;
run_writeStats = 1;

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
    
    cn_full_fdg_bl_allVertices = [cn_l_data_fdg_bl cn_r_data_fdg_bl];
    cn_full_fdg_fu_allVertices = [cn_l_data_fdg_fu cn_r_data_fdg_fu];
    cn_full_av45_bl_allVertices = [cn_l_data_av45_bl cn_r_data_av45_bl];
    cn_full_av45_fu_allVertices = [cn_l_data_av45_fu cn_r_data_av45_fu];
    cn_full_fdg_hypomet_allVertices = cn_full_fdg_bl_allVertices - cn_full_fdg_fu_allVertices;
    cn_full_av45_amylodosis_allVertices = cn_full_av45_fu_allVertices - cn_full_av45_bl_allVertices;
    cn_full_fdg_Yearlyhypomet_allVertices = bsxfun(@rdivide, cn_full_fdg_hypomet_allVertices, cn_visitDdiffFDG_data);
    cn_full_av45_Yearlyamyloidosis_allVertices = bsxfun(@rdivide, cn_full_av45_amylodosis_allVertices, cn_visitDdiffAV45_data);
    
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
    
    emci_full_fdg_bl_allVertices = [emci_l_data_fdg_bl emci_r_data_fdg_bl];
    emci_full_fdg_fu_allVertices = [emci_l_data_fdg_fu emci_r_data_fdg_fu];
    emci_full_av45_bl_allVertices = [emci_l_data_av45_bl emci_r_data_av45_bl];
    emci_full_av45_fu_allVertices = [emci_l_data_av45_fu emci_r_data_av45_fu];
    emci_full_fdg_hypomet_allVertices = emci_full_fdg_bl_allVertices - emci_full_fdg_fu_allVertices;
    emci_full_av45_amylodosis_allVertices = emci_full_av45_fu_allVertices - emci_full_av45_bl_allVertices;
    emci_full_fdg_Yearlyhypomet_allVertices = bsxfun(@rdivide, emci_full_fdg_hypomet_allVertices, emci_visitDdiffFDG_data);
    emci_full_av45_Yearlyamyloidosis_allVertices = bsxfun(@rdivide, emci_full_av45_amylodosis_allVertices, emci_visitDdiffAV45_data);
    
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
    
    lmci_full_fdg_bl_allVertices = [lmci_l_data_fdg_bl lmci_r_data_fdg_bl];
    lmci_full_fdg_fu_allVertices = [lmci_l_data_fdg_fu lmci_r_data_fdg_fu];
    lmci_full_av45_bl_allVertices = [lmci_l_data_av45_bl lmci_r_data_av45_bl];
    lmci_full_av45_fu_allVertices = [lmci_l_data_av45_fu lmci_r_data_av45_fu];
    lmci_full_fdg_hypomet_allVertices = lmci_full_fdg_bl_allVertices - lmci_full_fdg_fu_allVertices;
    lmci_full_av45_amylodosis_allVertices = lmci_full_av45_fu_allVertices - lmci_full_av45_bl_allVertices;
    lmci_full_fdg_Yearlyhypomet_allVertices = bsxfun(@rdivide, lmci_full_fdg_hypomet_allVertices, lmci_visitDdiffFDG_data);
    lmci_full_av45_Yearlyamyloidosis_allVertices = bsxfun(@rdivide, lmci_full_av45_amylodosis_allVertices, lmci_visitDdiffAV45_data);
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
    
    ad_full_fdg_bl_allVertices = [ad_l_data_fdg_bl ad_r_data_fdg_bl];
    ad_full_fdg_fu_allVertices = [ad_l_data_fdg_fu ad_r_data_fdg_fu];
    ad_full_av45_bl_allVertices = [ad_l_data_av45_bl ad_r_data_av45_bl];
    ad_full_av45_fu_allVertices = [ad_l_data_av45_fu ad_r_data_av45_fu];
    ad_full_fdg_hypomet_allVertices = ad_full_fdg_bl_allVertices - ad_full_fdg_fu_allVertices;
    ad_full_av45_amylodosis_allVertices = ad_full_av45_fu_allVertices - ad_full_av45_bl_allVertices;
    ad_full_fdg_Yearlyhypomet_allVertices = bsxfun(@rdivide, ad_full_fdg_hypomet_allVertices, ad_visitDdiffFDG_data);
    ad_full_av45_Yearlyamyloidosis_allVertices = bsxfun(@rdivide, ad_full_av45_amylodosis_allVertices, ad_visitDdiffAV45_data);
end

if (gen_data_tables)
    [cn_size discard] = size(cn_full_fdg_bl_avgMat);
    [emci_size discard] = size(emci_full_fdg_bl_avgMat);
    [lmci_size discard] = size(lmci_full_fdg_bl_avgMat);
    [ad_size discard] = size(ad_full_fdg_bl_avgMat);
    total_subjects = cn_size + emci_size + lmci_size + ad_size;
    
    age_vec = [cn_age_data; emci_age_data; lmci_age_data; ad_age_data];
    gender_vec = [cn_gender_data; emci_gender_data; lmci_gender_data; ad_gender_data];
    apoe4_vec = [cn_apoe4_data; emci_apoe4_data; lmci_apoe4_data; ad_apoe4_data];
    diagnosis_vector = [ones(cn_size,1); ones(emci_size,1)*2; ones(lmci_size,1)*3; ones(ad_size,1)*4];
    
    fdg_bl_matrix = [cn_full_fdg_bl_allVertices; emci_full_fdg_bl_allVertices; lmci_full_fdg_bl_allVertices; ad_full_fdg_bl_allVertices];
    fdg_fu_matrix = [cn_full_fdg_fu_allVertices; emci_full_fdg_fu_allVertices; lmci_full_fdg_fu_allVertices; ad_full_fdg_fu_allVertices];
    av45_bl_matrix = [cn_full_av45_bl_allVertices; emci_full_av45_bl_allVertices; lmci_full_av45_bl_allVertices; ad_full_av45_bl_allVertices];
    fdg_hypo_matrix = [cn_full_fdg_Yearlyhypomet_allVertices; emci_full_fdg_Yearlyhypomet_allVertices; lmci_full_fdg_Yearlyhypomet_allVertices; ad_full_fdg_Yearlyhypomet_allVertices];
    av45_amy_matrix = [cn_full_av45_Yearlyamyloidosis_allVertices; emci_full_av45_Yearlyamyloidosis_allVertices; lmci_full_av45_Yearlyamyloidosis_allVertices; ad_full_av45_Yearlyamyloidosis_allVertices];
        
end

if (run_analysis) 
    main_table = table(age_vec, nominal(gender_vec), nominal(apoe4_vec), nominal(diagnosis_vector), zeros(total_subjects, 1), zeros(total_subjects, 1) ,zeros(total_subjects, 1), zeros(total_subjects, 1), 'VariableNames', {'age','gender','apoe4','diagnosis', 'blFDG','blAV45','yearlyHypo','yearlyAmy'});
    
    pVals_blAV45 = zeros(81924,1);
    pVals_yearlyAmy = zeros(81924,1);
    
    pVals_emciblAV45 = zeros(81924,1);
    pVals_lmciblAV45 = zeros(81924,1);
    pVals_adblAV45 = zeros(81924,1);
    
    pVals_emciyearlyAmy = zeros(81924,1);
    pVals_lmciyearlyAmy = zeros(81924,1);
    pVals_adyearlyAmy = zeros(81924,1);
    
    eVals_blAV45 = zeros(81924,1);
    eVals_yearlyAmy = zeros(81924,1);
    
    eVals_emciblAV45 = zeros(81924,1);
    eVals_lmciblAV45 = zeros(81924,1);
    eVals_adblAV45 = zeros(81924,1);
    
    eVals_emciyearlyAmy = zeros(81924,1);
    eVals_lmciyearlyAmy = zeros(81924,1);
    eVals_adyearlyAmy = zeros(81924,1);
    
    tVals_blAV45 = zeros(81924,1);
    tVals_yearlyAmy = zeros(81924,1);
    
    tVals_emciblAV45 = zeros(81924,1);
    tVals_lmciblAV45 = zeros(81924,1);
    tVals_adblAV45 = zeros(81924,1);
    
    tVals_emciyearlyAmy = zeros(81924,1);
    tVals_lmciyearlyAmy = zeros(81924,1);
    tVals_adyearlyAmy = zeros(81924,1);
    
    parfor k=1:81924
        for_table = main_table;
        for_table.blFDG = fdg_bl_matrix(:,k);
        for_table.blAV45 = av45_bl_matrix(:,k);
        for_table.yearlyHypo = fdg_hypo_matrix(:,k);
        for_table.yearlyAmy = av45_amy_matrix(:,k);
        
        lm = fitlm(for_table, 'yearlyHypo ~ diagnosis*yearlyAmy + diagnosis*blAV45 + age + gender + apoe4 + blFDG');
        
        pVals_blAV45(k) = lm.Coefficients.pValue(9);
        pVals_yearlyAmy(k) = lm.Coefficients.pValue(10);
    
        pVals_emciblAV45(k) = lm.Coefficients.pValue(11);
        pVals_lmciblAV45(k) = lm.Coefficients.pValue(12);
        pVals_adblAV45(k) = lm.Coefficients.pValue(13);
    
        pVals_emciyearlyAmy(k) = lm.Coefficients.pValue(14);
        pVals_lmciyearlyAmy(k) = lm.Coefficients.pValue(15);
        pVals_adyearlyAmy(k) = lm.Coefficients.pValue(16);
        
        eVals_blAV45(k) = lm.Coefficients.Estimate(9);
        eVals_yearlyAmy(k) = lm.Coefficients.Estimate(10);
    
        eVals_emciblAV45(k) = lm.Coefficients.Estimate(11);
        eVals_lmciblAV45(k) = lm.Coefficients.Estimate(12);
        eVals_adblAV45(k) = lm.Coefficients.Estimate(13);
    
        eVals_emciyearlyAmy(k) = lm.Coefficients.Estimate(14);
        eVals_lmciyearlyAmy(k) = lm.Coefficients.Estimate(15);
        eVals_adyearlyAmy(k) = lm.Coefficients.Estimate(16);
        
        tVals_blAV45(k) = lm.Coefficients.tStat(9);
        tVals_yearlyAmy(k) = lm.Coefficients.tStat(10);
    
        tVals_emciblAV45(k) = lm.Coefficients.tStat(11);
        tVals_lmciblAV45(k) = lm.Coefficients.tStat(12);
        tVals_adblAV45(k) = lm.Coefficients.tStat(13);
    
        tVals_emciyearlyAmy(k) = lm.Coefficients.tStat(14);
        tVals_lmciyearlyAmy(k) = lm.Coefficients.tStat(15);
        tVals_adyearlyAmy(k) = lm.Coefficients.tStat(16);
        
    end
end

if (run_fdr)
    pVals_blAV45_fdr = fdr_bh(pVals_blAV45, 0.1);
    pVals_yearlyAmy_fdr = fdr_bh(pVals_yearlyAmy, 0.1);
    
    pVals_emciblAV45_fdr = fdr_bh(pVals_emciblAV45, 0.1);
    pVals_lmciblAV45_fdr = fdr_bh(pVals_lmciblAV45, 0.1);
    pVals_adblAV45_fdr = fdr_bh(pVals_adblAV45, 0.1);
    
    pVals_emciyearlyAmy_fdr = fdr_bh(pVals_emciyearlyAmy, 0.1);
    pVals_lmciyearlyAmy_fdr = fdr_bh(pVals_lmciyearlyAmy, 0.1);
    pVals_adyearlyAmy_fdr = fdr_bh(pVals_adyearlyAmy, 0.1);
end


if (get_estimates)
    eVals_blAV45_fdr = eVals_blAV45 .* pVals_blAV45_fdr;
    eVals_yearlyAmy_fdr = eVals_yearlyAmy .* pVals_yearlyAmy_fdr;
    
    eVals_emciblAV45_fdr = eVals_emciblAV45 .* pVals_emciblAV45_fdr;
    eVals_lmciblAV45_fdr = eVals_lmciblAV45 .* pVals_lmciblAV45_fdr;
    eVals_adblAV45_fdr = eVals_adblAV45 .* pVals_adblAV45_fdr;
    
    eVals_emciyearlyAmy_fdr = eVals_emciyearlyAmy .* pVals_emciyearlyAmy_fdr;
    eVals_lmciyearlyAmy_fdr = eVals_lmciyearlyAmy .* pVals_lmciyearlyAmy_fdr;
    eVals_adyearlyAmy_fdr = eVals_adyearlyAmy .* pVals_adyearlyAmy_fdr;
end

if (get_tstats_fdr)
    tVals_blAV45_fdr = tVals_blAV45 .* pVals_blAV45_fdr;
    tVals_yearlyAmy_fdr = tVals_yearlyAmy .* pVals_yearlyAmy_fdr;
    
    tVals_emciblAV45_fdr = tVals_emciblAV45 .* pVals_emciblAV45_fdr;
    tVals_lmciblAV45_fdr = tVals_lmciblAV45 .* pVals_lmciblAV45_fdr;
    tVals_adblAV45_fdr = tVals_adblAV45 .* pVals_adblAV45_fdr;
    
    tVals_emciyearlyAmy_fdr = tVals_emciyearlyAmy .* pVals_emciyearlyAmy_fdr;
    tVals_lmciyearlyAmy_fdr = tVals_lmciyearlyAmy .* pVals_lmciyearlyAmy_fdr;
    tVals_adyearlyAmy_fdr = tVals_adyearlyAmy .* pVals_adyearlyAmy_fdr;
end

if (run_writeStats)
    for i = {'blAV45', 'yearlyAmy', 'emciblAV45', 'lmciblAV45', 'adblAV45', 'emciyearlyAmy', 'lmciyearlyAmy', 'adyearlyAmy'}
       
          s_e = strcat('csvwrite_allvertices(eVals_',i,'_fdr'', ''/home/sulantha/Desktop/linear_model_sept2014/Int_diagnosis_Hypo_allVertices_diffBlur/',i,'_lm_fdr_e_l.txt'', ''/home/sulantha/Desktop/linear_model_sept2014/Int_diagnosis_Hypo_allVertices_diffBlur/',i,'_lm_fdr_e_r.txt'');');
          eval(s_e{1,1});
       
    end

    for i = {'blAV45', 'yearlyAmy', 'emciblAV45', 'lmciblAV45', 'adblAV45', 'emciyearlyAmy', 'lmciyearlyAmy', 'adyearlyAmy'}
       
          s_t = strcat('csvwrite_allvertices(tVals_',i,'_fdr'', ''/home/sulantha/Desktop/linear_model_sept2014/Int_diagnosis_Hypo_allVertices_diffBlur/',i,'_lm_fdr_t_l.txt'', ''/home/sulantha/Desktop/linear_model_sept2014/Int_diagnosis_Hypo_allVertices_diffBlur/',i,'_lm_fdr_t_r.txt'');');
          eval(s_t{1,1});
       
    end

    for i = {'blAV45', 'yearlyAmy', 'emciblAV45', 'lmciblAV45', 'adblAV45', 'emciyearlyAmy', 'lmciyearlyAmy', 'adyearlyAmy'}
       
          s_t_f = strcat('csvwrite_allvertices(tVals_',i,''', ''/home/sulantha/Desktop/linear_model_sept2014/Int_diagnosis_Hypo_allVertices_diffBlur/',i,'_lm_full_t_l.txt'', ''/home/sulantha/Desktop/linear_model_sept2014/Int_diagnosis_Hypo_allVertices_diffBlur/',i,'_lm_full_t_r.txt'');');
          eval(s_t_f{1,1});
       
    end
end