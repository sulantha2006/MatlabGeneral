function writeToFile( volumeData, left_path, right_path, l_map_dToS, r_map_dToS, l_map_SpacialToData, r_map_SpacialToData)
%Function to write brain volumes to disk. Will seperate to left and right
%hemispheres. First 1000 - left, second 1000 - right.
    l_vals = volumeData(1:1000);
    r_vals = volumeData(1001:2000);
    l_pop = populateClusters(l_vals', l_map_dToS);
    r_pop = populateClusters(r_vals', r_map_dToS);
    l_final = l_pop(l_map_SpacialToData,:);
    r_final = r_pop(r_map_SpacialToData,:);
    csvwrite(left_path,l_final);
    csvwrite(right_path,r_final);


end

