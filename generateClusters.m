numberOfClusters = 1000;
maxIterations = 1000;
replicates = 5;

l_coor = importdata('/home/sulantha/Brainview/leftVertices.csv');
r_coor = importdata('/home/sulantha/Brainview/rightVertices.csv');

[l_clusters l_cluster_centroids] = kmeans(l_coor, numberOfClusters, 'maxiter', maxIterations,'display', 'iter', 'replicates', replicates);
[r_clusters r_cluster_centroids] = kmeans(r_coor, numberOfClusters, 'maxiter', maxIterations,'display', 'iter', 'replicates', replicates);

csvwrite('/home/sulantha/Brainview/Clusters/l_clusters.csv', l_clusters);
csvwrite('/home/sulantha/Brainview/Clusters/l_cluster_centroids.csv', l_cluster_centroids);
csvwrite('/home/sulantha/Brainview/Clusters/r_clusters.csv', r_clusters);
csvwrite('/home/sulantha/Brainview/Clusters/r_cluster_centroids.csv', r_cluster_centroids);