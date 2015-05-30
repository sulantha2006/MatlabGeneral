function y = setTable(f_t, k, multivalueVariables)
     for var = multivalueVariables
         eval(['global ' var{1}]);
     end
     for varName = multivalueVariables
         str_cnt = strcat('f_t.',varName{1},' = ',varName{1},'(:,',num2str(k),');');
         str_cnt
         eval([str_cnt]);
         y = f_t;
     end
end

