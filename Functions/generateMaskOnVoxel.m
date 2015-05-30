function generateMaskOnVoxel( coordinates_x, coordinates_y, coordinates_z, resample_img, output_mask, expand_voxels )
%This function will generate a MINC Mask on the coordinates specified and
%will be resampled to the file specified. 
    
    if ~(length(coordinates_x) == length(coordinates_y) && length(coordinates_x) == length(coordinates_z))
        fprintf('Error: Size of Coordinates does not match.');
        exit(0);
    end

    img_handle = openimage(resample_img);
    img_info = getimageinfo(img_handle, 'DimSizes');
    n_slices = img_info(2);
    n_height = img_info(3);
    n_width = img_info(4);
    closeimage(img_handle);
   
    image_vector = zeros(n_height*n_width, n_slices);
    for i = 1:length(coordinates_x)
        if nargin > 5
            location_list = zeros((expand_voxels*2+1)^3, 3);
            location_id = 1;
            for k = (-1*expand_voxels):expand_voxels
                for l = (-1*expand_voxels):expand_voxels
                    for m = (-1*expand_voxels):expand_voxels
                        location_list(location_id, 1) = coordinates_x(i)+k;
                        location_list(location_id, 2) = coordinates_y(i)+l;
                        location_list(location_id, 3) = coordinates_z(i)+m;
                        location_id = location_id + 1;
                    end
                end
            end
            for j=1:length(location_list)
                vec_location = round(location_list(j,2))*n_width + round(location_list(j,1))+1;
                image_vector(vec_location, round(location_list(j,3))+1) = i;
            end
        else 
            vec_location = round(coordinates_y(i))*n_width + round(coordinates_x(i))+1;
            image_vector(vec_location, round(coordinates_z(i))+1) = i;
        end
    end
    
    img_handle = newimage(output_mask, [0 n_slices n_height n_width], resample_img, 'short');
    putimages(img_handle, image_vector, 1:n_slices);
    closeimage(img_handle);
end