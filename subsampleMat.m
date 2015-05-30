function [ resultMat ] = subsampleMat( inputMat, subsampleMat )
%This function will subsample a given Matrix using the values in the
%subsampleMat. subsampleMat of [3 4] will skip every 3rd row and 4th column. 

resultMat = inputMat(1:subsampleMat(1):end,1:subsampleMat(2):end);


end

