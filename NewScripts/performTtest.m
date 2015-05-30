function [ h,p,ci,t ] = performTtest( inputTable, dataColumn, groupColumnName, group1, group2, includeString)
    mainDataTable = readtable(inputTable);
    
    if length(includeString) > 0
        incStr = strrep(includeString, 'mdt.', 'mainDataTable.');
        eval(['mainDataTable_rows = ' incStr ';']);
        mainDataTable = mainDataTable(mainDataTable_rows, :);
    end
    
    if isstr(group1)
        eval(['group1_rows = strcmp(mainDataTable. ' groupColumnName ', ''' group1 ''');']);
    else
        %evalStr = strcat('group1_rows = mainDataTable.', groupColumnName)
        eval(['group1_rows = mainDataTable. ' groupColumnName ' == ' num2str(group1) ';']);
    end
    eval(['group1data = readmultiValuedData(mainDataTable(group1_rows, :).' dataColumn ');']);
    
    if isstr(group2)
        eval(['group2_rows = strcmp(mainDataTable. ' groupColumnName ', ''' group2 ''');']);
    else
        eval(['group2_rows = mainDataTable. ' groupColumnName '== ' num2str(group2) ';']);
    end
    eval(['group2data = readmultiValuedData(mainDataTable(group2_rows, :).' dataColumn ');']);
    
    [h,p,ci,t] = ttest2(group1data, group2data);


end