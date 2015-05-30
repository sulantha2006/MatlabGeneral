function Network_3D_View(C_Matrix,thresh_C,thresh_type,clim, vertice_size_vector)

global COORD TEMPLATE_FILE

Coord = COORD;
n_rois = size(Coord,1);
s = my_spectral;
n_colors = size(s,1);

if nargin<4
    clim = [];
end
if nargin<3
    thresh_type = [];
end
if isempty(thresh_type)
    thresh_type = 'Corr';
end
if isempty(clim)
    clim = [-1 1];
end

if ~isempty(TEMPLATE_FILE)
    d = fmris_read_image(TEMPLATE_FILE,0,0);
    numslices=d.dim(3);
    numys = d.dim(2);
    numxs = d.dim(1);
    d=fmris_read_image(TEMPLATE_FILE,1:numslices,1);
    mask = (d.data>40);
    vol.lat = true([numxs numys numslices]);
    vol.vox = d.vox;
    vol.origin = d.origin;
    v = ones(1,prod(d.dim(1:3)));
    slm.P = v;
    slm.mask = mask(:)';
    slm.thresh = .5;
end

%% Thresholding Correlation Matrix
if ~isempty(C_Matrix)
    if ~isvector(C_Matrix)
        C_Matrix = my_square_form(C_Matrix);
    end
    n_pairs = length(C_Matrix);
    if strcmp(thresh_type,'Corr')
        C = C_Matrix;
        C(abs(C)<thresh_C) = 0;
        Btmp = ones(n_rois);
        Btmp = triu(Btmp,1);
        Btmp(Btmp>0) = C;
        A_Matrix = Btmp;
    elseif strcmp(thresh_type,'Cost')
        C = C_Matrix;
        [Ctemp,ind] = sort(C);
        pcnt = round((1-thresh_C)*n_pairs);
        C(ind(1:pcnt)) = 0;
        Btmp = ones(n_rois);
        Btmp = triu(Btmp,1);
        Btmp(Btmp>0) = C;
        A_Matrix = Btmp;
    end
    [ind_1P,ind_2P] = find(A_Matrix>0);
    [ind_1N,ind_2N] = find(A_Matrix<0);
    sig_corr.P = A_Matrix(sub2ind([n_rois n_rois],ind_1P,ind_2P));
    sig_corr.N = A_Matrix(sub2ind([n_rois n_rois],ind_1N,ind_2N));
else
    ind_1P = [];
    ind_1N = [];
    ind_2P = [];
    ind_2N = [];
end

if ~isempty(ind_1P)
    tmp_corr = sig_corr.P;
    range_r = linspace(clim(1),clim(2),n_colors);
    range_measure = range_r;
    measure_r = interp1(range_measure,range_r,tmp_corr);
    range_r = repmat(range_r(:),1,length(measure_r));
    measure_r = repmat(measure_r(:)',n_colors,1);
    [tmp,ind_color] = min(abs(range_r-measure_r));
    edge_color_P = s(ind_color,:);
end
if ~isempty(ind_1N)
    tmp_corr = sig_corr.N;
    range_r = linspace(clim(1),clim(2),n_colors);
    range_measure = range_r;
    measure_r = interp1(range_measure,range_r,tmp_corr);
    range_r = repmat(range_r(:),1,length(measure_r));
    measure_r = repmat(measure_r(:)',n_colors,1);
    [tmp,ind_color] = min(abs(range_r-measure_r));
    edge_color_N = s(ind_color,:);
end

%% Plotting
if ~isempty(TEMPLATE_FILE)
    my_SurfStatView1(slm,vol);
    hold on
end
plot3(Coord(:,1),Coord(:,2),Coord(:,3),'k.');
%scatter3(Coord(:,1),Coord(:,2),Coord(:,3),10*vertice_size_vector','fill')
if ~isempty(ind_1P)
    for k=1:length(ind_1P)
        plot3([Coord(ind_1P(k),1);Coord(ind_2P(k),1)],[Coord(ind_1P(k),2);Coord(ind_2P(k),2)],...
            [Coord(ind_1P(k),3);Coord(ind_2P(k),3)],'Color',edge_color_P(k,:))
        hold on
    end
end
if ~isempty(ind_1N)
    for k=1:length(ind_1N)
        plot3([Coord(ind_1N(k),1);Coord(ind_2N(k),1)],[Coord(ind_1N(k),2);Coord(ind_2N(k),2)],...
            [Coord(ind_1N(k),3);Coord(ind_2N(k),3)],'Color',edge_color_N(k,:))
        hold on
    end
end

grid off
axis off
colormap(s),
colorbar
caxis(clim)

