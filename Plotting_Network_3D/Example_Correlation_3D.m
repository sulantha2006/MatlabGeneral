global TEMPLATE_FILE COORD
TEMPLATE_FILE = '/home/sulantha/bin/MatlabScripts/new_temp.mnc';
%Coord_tmp = importdata('coords.xls');
%Coord_tmp = importdata('coords_h.csv');
Coord_tmp = full_cluster_centroids;
%COORD = Coord_tmp.Sheet1;
COORD = Coord_tmp;
%vertice_size_vector = cn_sampled_corr_mat_bin_sum';
%C_matrix = importdata('r_baseline.csv');
%C_matrix = temp_corr_mat;
C_matrix = cn_connectivity_values_for_max_hub;

%% Threshold based on correlation value
thresh_C = 0.75;% Threshold
thresh_type = 'Corr';
c_lim = [0.74 1];
figure;
Network_3D_View(C_matrix,thresh_C, thresh_type,c_lim);

%% Threshold based on network cost
%thresh_C = 0.0005;% Threshold = 10% of strongest correlations
%thresh_type = 'Cost';
%c_lim = [0.9 1];
%Network_3D_View(C_matrix,thresh_C,thresh_type,c_lim);

