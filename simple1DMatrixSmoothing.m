function [ smoothedMat ] = simple1DMatrixSmoothing( inputMat, kernalWidth )
%This function will do 1-D smoothing across the rows of a Matrix with the
%Gaussian Kernal of the specified width.

halfWidth = ceil(kernalWidth/2);
gaussFilter = gausswin(kernalWidth);
gaussFilter = gaussFilter / sum(gaussFilter);

smoothedMatrix = conv2(1, gaussFilter, inputMat);
smoothedMat = smoothedMatrix(:, halfWidth:end-halfWidth);

end

