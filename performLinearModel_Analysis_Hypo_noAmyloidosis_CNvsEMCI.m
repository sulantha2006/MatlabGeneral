run_cn = 1
run_emci = 1
gen_data_tables = 1
run_analysis = 1
run_fdr = 1
get_estimates = 1
get_tstats_fdr = 1
run_writeStats = 1

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

if (gen_data_tables)
    [cn_size discard] = size(cn_full_fdg_bl_avgMat);
    [emci_size discard] = size(emci_full_fdg_bl_avgMat);
    total_subjects = cn_size + emci_size;
    
    age_vec = [cn_age_data; emci_age_data];
    gender_vec = [cn_gender_data; emci_gender_data];
    apoe4_vec = [cn_apoe4_data; emci_apoe4_data];
    diagnosis_vector = [ones(cn_size,1)*0; ones(emci_size,1)*1];
    
    fdg_bl_matrix = [cn_full_fdg_bl_avgMat; emci_full_fdg_bl_avgMat];
    fdg_fu_matrix = [cn_full_fdg_fu_avgMat; emci_full_fdg_fu_avgMat];
    av45_bl_matrix = [cn_full_av45_bl_avgMat; emci_full_av45_bl_avgMat];
    fdg_hypo_matrix = [cn_full_fdg_Yearlyhypomet; emci_full_fdg_Yearlyhypomet];
    av45_amy_matrix = [cn_full_av45_Yearlyamyloidosis; emci_full_av45_Yearlyamyloidosis];
        
end

if (run_analysis) 
    main_table = table(age_vec, nominal(gender_vec), nominal(apoe4_vec), nominal(diagnosis_vector), zeros(total_subjects, 1), zeros(total_subjects, 1) ,zeros(total_subjects, 1), zeros(total_subjects, 1), 'VariableNames', {'age','gender','apoe4','diagnosis', 'blFDG','blAV45','yearlyHypo','yearlyAmy'});
    
    pVals_blAV45 = zeros(2000,1);
    pVals_emciblAV45 = zeros(2000,1);
        
    eVals_blAV45 = zeros(2000,1);
    eVals_emciblAV45 = zeros(2000,1);
        
    tVals_blAV45 = zeros(2000,1);
    tVals_emciblAV45 = zeros(2000,1);
        
    for k=1:2000
        for_table = main_table;
        for_table.blFDG = fdg_bl_matrix(:,k);
        for_table.blAV45 = av45_bl_matrix(:,k);
        for_table.yearlyHypo = fdg_hypo_matrix(:,k);
        
        lm = fitlm(for_table, 'yearlyHypo ~ diagnosis*blAV45 + age + gender + apoe4 + blFDG');
        
        pVals_blAV45(k) = lm.Coefficients.pValue(7);
        pVals_emciblAV45(k) = lm.Coefficients.pValue(8);
        
        eVals_blAV45(k) = lm.Coefficients.Estimate(7);
        eVals_emciblAV45(k) = lm.Coefficients.Estimate(8);
          
        tVals_blAV45(k) = lm.Coefficients.tStat(7);
        tVals_emciblAV45(k) = lm.Coefficients.tStat(8);
        
    end
end

if (run_fdr)
    pVals_blAV45_fdr = fdr_bh(pVals_blAV45, 0.1);
    pVals_emciblAV45_fdr = fdr_bh(pVals_emciblAV45, 0.1);
    
end


if (get_estimates)
    eVals_blAV45_fdr = eVals_blAV45 .* pVals_blAV45_fdr;
    eVals_emciblAV45_fdr = eVals_emciblAV45 .* pVals_emciblAV45_fdr;
end

if (get_tstats_fdr)
    tVals_blAV45_fdr = tVals_blAV45 .* pVals_blAV45_fdr;
    tVals_emciblAV45_fdr = tVals_emciblAV45 .* pVals_emciblAV45_fdr;
end

if (run_writeStats)
    for i = {'blAV45', 'emciblAV45'}
       
          s_e = strcat('writeToFile(eVals_',i,'_fdr'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsEMCI/',i,'_lm_fdr_e_l.txt'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsEMCI/',i,'_lm_fdr_e_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_e{1,1});
       
    end

    for i = {'blAV45', 'emciblAV45'}
       
          s_t = strcat('writeToFile(tVals_',i,'_fdr'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsEMCI/',i,'_lm_fdr_t_l.txt'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsEMCI/',i,'_lm_fdr_t_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_t{1,1});
       
    end

    for i = {'blAV45', 'emciblAV45'}
       
          s_t_f = strcat('writeToFile(tVals_',i,''', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsEMCI/',i,'_lm_full_t_l.txt'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsEMCI/',i,'_lm_full_t_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_t_f{1,1});
       
    end
end