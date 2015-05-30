function [ outMat ] = getClusterwiseAverage( inputMat, numberOfClusters, cluster_Map )

inTrans = inputMat';
outMatTemp = [];
for i = 1:numberOfClusters
    outMatTemp = [outMatTemp;mean(inTrans(find(cluster_Map == i),:))];
end

outMat = outMatTemp';

end

