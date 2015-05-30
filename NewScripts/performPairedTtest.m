function [ h,p,ci,t ] = performPairedTtest( inputTable, contrastColumnId1, contrastColumnId2, includeString)
    mainDataTable = readtable(inputTable);
    
    if length(includeString) > 0
        incStr = strrep(includeString, 'mdt.', 'mainDataTable.');
        eval(['mainDataTable_rows = ' incStr ';']);
        mainDataTable = mainDataTable(mainDataTable_rows, :);
    end
        
    eval(['mat1 = readmultiValuedData(mainDataTable.' contrastColumnId1 ');']);
    eval(['mat2 = readmultiValuedData(mainDataTable.' contrastColumnId2 ');']);
    
    [h,p,ci,t] = ttest(mat1, mat2);


end

