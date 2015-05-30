function [ LMO ] = performNonLinearModel( inputTable, stringModel, modelClass, multivalueVariables, multiValueSize, doVertexReduction, categoricalVars, includeString )
    mainDataTable = readtable(inputTable);
    
    if length(includeString) > 0
        incStr = strrep(includeString, 'mdt.', 'mainDataTable.');
        eval(['mainDataTable_rows = ' incStr ';']);
        mainDataTable = mainDataTable(mainDataTable_rows, :);
    end
    
    multiVarMap = containers.Map();
    
    %% Parsing Model String
    usedVars = {};
    
    temp = strsplit(stringModel, '~');
    responseVar = temp(1);
    U = matlab.lang.makeUniqueStrings(responseVar{1});
    eval([U '= mainDataTable.' responseVar{1,1} ';']);
    usedVars = [usedVars responseVar{1,1}];
    
    temp1 = strsplit(temp{1,2}, '+');
    for t_var = temp1
        c = t_var{1};
        if isempty(strfind(t_var{1}, '*'))
            U = matlab.lang.makeUniqueStrings(t_var{1});
            eval([U '= mainDataTable.' t_var{1,1} ';']);
            usedVars = [usedVars t_var{1,1}];
        else
            temp2 = strsplit(t_var{1}, '*');
            for t_var2 = temp2
                U = matlab.lang.makeUniqueStrings(t_var2{1});
                eval([U '= mainDataTable.' t_var2{1,1} ';']);
                usedVars = [usedVars t_var2{1,1}];
            end
        end
    end
   
    for var = multivalueVariables
        U = matlab.lang.makeUniqueStrings(var{1});
        eval([U '= readmultiValuedData(mainDataTable.' var{1,1} ');']);
        str = strcat('multiVarMap(''', var{1,1}, ''') = ', U, ';' );
        eval([str]);
    end

    %% Do Model
    if ~doVertexReduction
        dataTable = mainDataTable(:,usedVars);
        
        t_coefficients = cell(multiValueSize, 1);
        t_SSR = zeros(multiValueSize, 1);
        t_LogLikelihood = zeros(multiValueSize, 1);
        t_Fitted = cell(multiValueSize, 1);
        t_Residuals = cell(multiValueSize, 1);
        
        parfor k=1:multiValueSize 
            f_h = dataTable;
            %f_h = setTable(f_table, k, multivalueVariables);
%             for varName = multivalueVariables
%                 str_cnt = strcat('f_h.',varName{1},' = ',varName{1},'(:,',num2str(k),');');
%                 eval([str_cnt]);   
%             end  
%             if length(categoricalVars{1}) > 0         
%                 lm = fitlm(f_h, stringModel, 'CategoricalVars', categoricalVars);
%             else
%                 lm = fitlm(f_h, stringModel);
%             end
            lm = parForLM(f_h, stringModel, modelClass, k, categoricalVars, multivalueVariables, multiVarMap);
            t_coefficients{k} = lm.Coefficients;
            t_SSR(k) = lm.SSR;
            t_LogLikelihood(k) = lm.LogLikelihood;
            t_Fitted{k} = lm.Fitted;
            t_Residuals{k} = lm.Residuals(:,{'Raw'});
        end
        LMO = LMObject(t_coefficients,t_SSR, t_LogLikelihood, t_Fitted, t_Residuals );
    end  
end

function [model] = parForLM(table, formula, modelClass, k, categoricalVars, multivalueVariables, multiVarMap)
        for varName = multivalueVariables
            varData = multiVarMap(varName{1});
            str_cnt = strcat('table.',varName{1},' = varData(:,',num2str(k),');');
            eval([str_cnt]);   
        end  
        if length(categoricalVars{1}) > 0         
            model = fitglm(table, formula, 'Distribution', modelClass, 'CategoricalVars', categoricalVars);
        else
            model = fitglm(table, formula);
        end
        
    end



