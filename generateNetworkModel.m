%l_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_left_ad.csv';
%r_file = '/home/sulantha/DataListFiles/BEAST_CT_ADNI-baseline_right_ad.csv';
%l_data = buildDataMatrixFromSubjectList(l_file);
%r_data = buildDataMatrixFromSubjectList(r_file);

l_clusters = importdata('/home/sulantha/Brainview/Clusters/l_clusters.csv');
r_clusters = importdata('/home/sulantha/Brainview/Clusters/r_clusters.csv');
l_cluster_centroids = importdata('/home/sulantha/Brainview/Clusters/l_cluster_centroids.csv');
r_cluster_centroids = importdata('/home/sulantha/Brainview/Clusters/r_cluster_centroids.csv');

full_cluster_centroids = [l_cluster_centroids;r_cluster_centroids];

[l_map_dToS, l_map_dataToSpacial] = sortrows(l_clusters);
[r_map_dToS, r_map_dataToSpacial] = sortrows(r_clusters);

[l_map_SToD, l_map_SpacialToData] = sortrows(l_map_dataToSpacial);
[r_map_SToD, r_map_SpacialToData] = sortrows(r_map_dataToSpacial);


%l_data_T = l_data';
%l_reorderedMatrixToSpacialSpace_temp = l_data_T(l_map_dataToSpacial,:);
%l_reorderedMatrixToSpacialSpace = l_reorderedMatrixToSpacialSpace_temp';

%r_data_T = r_data';
%r_reorderedMatrixToSpacialSpace_temp = r_data_T(r_map_dataToSpacial,:);
%r_reorderedMatrixToSpacialSpace = r_reorderedMatrixToSpacialSpace_temp';


centroid_distances = zeros(2000);
for i = 1:2000
    for j = 1:2000
        centroid_distances(i,j) = norm(full_cluster_centroids(i,:) - full_cluster_centroids(j,:));
    end
end