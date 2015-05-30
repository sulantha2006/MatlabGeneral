function [ results ] = getMean( inputTable, dataColumn, includeString )
    mainDataTable = readtable(inputTable);
    
    if length(includeString) > 0
        incStr = strrep(includeString, 'mdt.', 'mainDataTable.');
        eval(['mainDataTable_rows = ' incStr ';']);
        mainDataTable = mainDataTable(mainDataTable_rows, :);
    end
    
    eval(['data = readmultiValuedData(mainDataTable.' dataColumn ');']);
    
    results = mean(data);

end

