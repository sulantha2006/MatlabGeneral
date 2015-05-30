function [Group1_r, Group1_Fdr, Group2_r, Group2_Fdr, Diff_Z, Diff_FdZ] = doSeedBasedCorrelation(inputTable, seedValueColumnName, correlatingColumnName, groupingColumn, group1, group2, seed_indexes)

    mainDataTable = readtable(inputTable);
    eval(['dataTable_g1_rows = strcmp(mainDataTable.' groupingColumn ', ''' group1 ''');']);
    eval(['dataTable_g2_rows = strcmp(mainDataTable.' groupingColumn ', ''' group2 ''');']);
    dataTable_g1 = mainDataTable(dataTable_g1_rows,:);
    dataTable_g2 = mainDataTable(dataTable_g2_rows,:);

    eval(['seedValueData_g1 = readmultiValuedData(dataTable_g1.' seedValueColumnName ');']);
    seedValueDataColumns_g1 = seedValueData_g1(:,unique(seed_indexes));
    seedValues_g1 = mean(seedValueDataColumns_g1, 2);

    eval(['correlatingValues_g1 = readmultiValuedData(dataTable_g1.' correlatingColumnName ');']);

    eval(['seedValueData_g2 = readmultiValuedData(dataTable_g2.' seedValueColumnName ');']);
    seedValueDataColumns_g2 = seedValueData_g2(:,unique(seed_indexes));
    seedValues_g2 = mean(seedValueDataColumns_g2, 2);

    eval(['correlatingValues_g2 = readmultiValuedData(dataTable_g2.' correlatingColumnName ');']);

    [n1, v] = size(correlatingValues_g1);
    [n2, x] = size(correlatingValues_g2);

    g1_corr_r = zeros(1,v);
    g1_corr_p = ones(1,v);

    for k=1:v
        [g1_corr_r(k), g1_corr_p(k)] = corr(seedValues_g1, correlatingValues_g1(:,k));
    end

    g2_corr_r = zeros(1,v);
    g2_corr_p = ones(1,v);

    for k=1:v
        [g2_corr_r(k), g2_corr_p(k)] = corr(seedValues_g2, correlatingValues_g2(:,k));
    end

    g1_corr_r_fdr = g1_corr_r .* fdr_bh(g1_corr_p, 0.1);
    g2_corr_r_fdr = g2_corr_r .* fdr_bh(g2_corr_p, 0.1);

    diff_Z = (atan(g1_corr_r) - atan(g2_corr_r)) ./ sqrt(1/(n1-3) + 1/(n2-3));
    diff_Z_p = 2*(1 - normcdf(abs(diff_Z), 0, 1));
    diff_Z_fdr = diff_Z .* fdr_bh(diff_Z_p, 0.1);

    Group1_r = g1_corr_r;
    Group1_Fdr = g1_corr_r_fdr;
    Group2_r = g2_corr_r;
    Group2_Fdr = g2_corr_r_fdr;
    Diff_Z = diff_Z;
    Diff_FdZ = diff_Z_fdr;

end