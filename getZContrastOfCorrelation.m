function [zmat] = getZContrastOfCorrelation(matA, matB, nA, nB)
%Get the zmap of contrast between two equal sized correlation matrices. 
zmat = (atan(matA) - atan(matB))/sqrt(1/(nA-3) + 1/(nB-3));
end