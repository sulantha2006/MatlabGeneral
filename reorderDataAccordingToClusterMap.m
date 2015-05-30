function [ outputMat ] = reorderDataAccordingToClusterMap( dataMat, mapMat )
%This function reorders the columns of the matrix(Dimensions of the data)
%according to the mapping Matrix. Datasapce to Matrix space(Analysis).

outputMat = dataMat(:,mapMat);

end

