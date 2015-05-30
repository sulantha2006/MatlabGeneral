function [ binMat ] = do_fdr( matrix )
%Perform fdr correction on the auto correlation matrix
%Only considers the upper triangular part of the matrix for the correction.
    [s s] = size(matrix);
    upper_mat_ones = triu(ones(s), 1);
    vec_upper = matrix(upper_mat_ones == 1);
    vec_corrected = fdr_bh(vec_upper);
    upper_mat_ones(upper_mat_ones == 1) = vec_corrected;
    binMat = upper_mat_ones + upper_mat_ones';

end

