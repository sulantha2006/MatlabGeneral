function [ reducedMat ] = reduceDimensionByColumnAverage( inputMat, n )
%Reduce number of dimensions in a matrix by averaging n number of
%dimensions. 
    
[rows columns] = size(inputMat);
reducedMat = reshape(mean(reshape(inputMat',n,[])),rows, columns/n);

end

