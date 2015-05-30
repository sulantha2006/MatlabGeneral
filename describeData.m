function [output] = describeData( inputTable, multivalueVariables, includeString )
    mainDataTable = readtable(inputTable);    
    incStr = strrep(includeString, 'mdt.', 'mainDataTable.');
    eval(['mainDataTable_rows = ' incStr ';']);
    mainDataTable = mainDataTable(mainDataTable_rows, :);
    output = {};
    for var = multivalueVariables
        U = matlab.lang.makeUniqueStrings(var{1});
        eval([U '= readmultiValuedData(mainDataTable.' var{1,1} ');']);
        eval(['output = [output ' U '];' ]);
    end

    

end

