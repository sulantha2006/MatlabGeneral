function [ repeatedMat ] = repeatElementsOfMatrix( inputMat, repeatPatternMatrix )
%This function will repeat the elements in a Matrix weighted by the values
%in the repeatPatternMatrix. This is the same as taking Kronecker tensor
%product of two marices. 

repeatedMat = kron(inputMat, repeatPatternMatrix);

end

