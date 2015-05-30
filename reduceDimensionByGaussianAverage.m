function [ oMat ] = reduceDimensionByGaussianAverage( inputMat, gaussianKernelWidth )
%Reduce dimensions of a Matrix by row wise gaussian averaging. So number of columns will be reduced in the outputMatrix.  

gaussianKernal = gausswin(gaussianKernelWidth);
gaussianKernal = gaussianKernal/sum(gaussianKernal);

[rows columns] = size(inputMat);
oMat = reshape(gaussianKernal*reshape(inputMat',gaussianKernelWidth,[]),rows, columns/gaussianKernelWidth);

end

