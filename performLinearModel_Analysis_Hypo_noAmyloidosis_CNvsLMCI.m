run_cn = 1
run_lmci = 1
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

if (gen_data_tables)
    [cn_size discard] = size(cn_full_fdg_bl_avgMat);
    [lmci_size discard] = size(lmci_full_fdg_bl_avgMat);
    total_subjects = cn_size + lmci_size;
    
    age_vec = [cn_age_data; lmci_age_data];
    gender_vec = [cn_gender_data; lmci_gender_data];
    apoe4_vec = [cn_apoe4_data; lmci_apoe4_data];
    diagnosis_vector = [ones(cn_size,1)*0; ones(lmci_size,1)*1];
    
    fdg_bl_matrix = [cn_full_fdg_bl_avgMat; lmci_full_fdg_bl_avgMat];
    fdg_fu_matrix = [cn_full_fdg_fu_avgMat; lmci_full_fdg_fu_avgMat];
    av45_bl_matrix = [cn_full_av45_bl_avgMat; lmci_full_av45_bl_avgMat];
    fdg_hypo_matrix = [cn_full_fdg_Yearlyhypomet; lmci_full_fdg_Yearlyhypomet];
    av45_amy_matrix = [cn_full_av45_Yearlyamyloidosis; lmci_full_av45_Yearlyamyloidosis];
        
end

if (run_analysis) 
    main_table = table(age_vec, nominal(gender_vec), nominal(apoe4_vec), nominal(diagnosis_vector), zeros(total_subjects, 1), zeros(total_subjects, 1) ,zeros(total_subjects, 1), zeros(total_subjects, 1), 'VariableNames', {'age','gender','apoe4','diagnosis', 'blFDG','blAV45','yearlyHypo','yearlyAmy'});
    
    pVals_blAV45 = zeros(2000,1);
    pVals_lmciblAV45 = zeros(2000,1);
        
    eVals_blAV45 = zeros(2000,1);
    eVals_lmciblAV45 = zeros(2000,1);
        
    tVals_blAV45 = zeros(2000,1);
    tVals_lmciblAV45 = zeros(2000,1);
        
    for k=1:2000
        for_table = main_table;
        for_table.blFDG = fdg_bl_matrix(:,k);
        for_table.blAV45 = av45_bl_matrix(:,k);
        for_table.yearlyHypo = fdg_hypo_matrix(:,k);
        
        lm = fitlm(for_table, 'yearlyHypo ~ diagnosis*blAV45 + age + gender + apoe4 + blFDG');
        
        pVals_blAV45(k) = lm.Coefficients.pValue(7);
        pVals_lmciblAV45(k) = lm.Coefficients.pValue(8);
        
        eVals_blAV45(k) = lm.Coefficients.Estimate(7);
        eVals_lmciblAV45(k) = lm.Coefficients.Estimate(8);
          
        tVals_blAV45(k) = lm.Coefficients.tStat(7);
        tVals_lmciblAV45(k) = lm.Coefficients.tStat(8);
        
    end
end

if (run_fdr)
    pVals_blAV45_fdr = fdr_bh(pVals_blAV45, 0.1);
    pVals_lmciblAV45_fdr = fdr_bh(pVals_lmciblAV45, 0.1);
    
end


if (get_estimates)
    eVals_blAV45_fdr = eVals_blAV45 .* pVals_blAV45_fdr;
    eVals_lmciblAV45_fdr = eVals_lmciblAV45 .* pVals_lmciblAV45_fdr;
end

if (get_tstats_fdr)
    tVals_blAV45_fdr = tVals_blAV45 .* pVals_blAV45_fdr;
    tVals_lmciblAV45_fdr = tVals_lmciblAV45 .* pVals_lmciblAV45_fdr;
end

if (run_writeStats)
    for i = {'blAV45', 'lmciblAV45'}
       
          s_e = strcat('writeToFile(eVals_',i,'_fdr'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsLMCI/',i,'_lm_fdr_e_l.txt'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsLMCI/',i,'_lm_fdr_e_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_e{1,1});
       
    end

    for i = {'blAV45', 'lmciblAV45'}
       
          s_t = strcat('writeToFile(tVals_',i,'_fdr'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsLMCI/',i,'_lm_fdr_t_l.txt'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsLMCI/',i,'_lm_fdr_t_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_t{1,1});
       
    end

    for i = {'blAV45', 'lmciblAV45'}
       
          s_t_f = strcat('writeToFile(tVals_',i,''', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsLMCI/',i,'_lm_full_t_l.txt'', ''/data/data03/sulantha/linear_model_feb2015/Int_diagnosis_Hypo_diffBlur_noAmyloidosis_CNvsLMCI/',i,'_lm_full_t_r.txt'', l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData);');
          eval(s_t_f{1,1});
       
    end
end