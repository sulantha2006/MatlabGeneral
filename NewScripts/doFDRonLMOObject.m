function [ FDRO ] = doFDRonLMOObject( LMO, fdrLevel )
    [numOfValues, x] = size(LMO.Coefficients);
    numOfVariables = height(LMO.Coefficients{1});
    varNames = LMO.Coefficients{1}.Properties.RowNames;
    
    pValues = zeros(numOfValues, numOfVariables);
    tValues = zeros(numOfValues, numOfVariables);
    eValues = zeros(numOfValues, numOfVariables);
    
    u_pValues = zeros(numOfValues, numOfVariables);
    u_tValues = zeros(numOfValues, numOfVariables);
    u_eValues = zeros(numOfValues, numOfVariables);
    
    parfor i = 1:numOfVariables
        t_p = zeros(numOfValues, 1);
        t_t = zeros(numOfValues, 1);
        t_e = zeros(numOfValues, 1);
        for j = 1:numOfValues
            table_t = LMO.Coefficients{j};
            t_p(j) = table_t{i, 4};
            t_t(j) = table_t{i, 3};
            t_e(j) = table_t{i, 1};
        end
        p_fdr = fdr_bh(t_p, fdrLevel);
        t_fdr = p_fdr .* t_t;
        e_fdr = p_fdr .* t_e;
        
        pValues(:,i) = p_fdr;
        tValues(:,i) = t_fdr;
        eValues(:,i) = e_fdr;
        
        u_pValues(:,i) = t_p;
        u_tValues(:,i) = t_t;
        u_eValues(:,i) = t_e;
        
    end
    
    for k = 1:numOfVariables
        varNames{k,1} = regexprep(varNames{k,1}, '[^a-zA-Z0-9]', '');
    end
    
    pTable = array2table(pValues, 'VariableNames', varNames');
    tTable = array2table(tValues, 'VariableNames', varNames');
    eTable = array2table(eValues, 'VariableNames', varNames');
    
    u_pTable = array2table(u_pValues, 'VariableNames', varNames');
    u_tTable = array2table(u_tValues, 'VariableNames', varNames');
    u_eTable = array2table(u_eValues, 'VariableNames', varNames');
    
    FDRO = FDRObject(u_pTable, u_tTable, u_eTable, pTable, tTable, eTable);
    
    
end

