function C = my_square_form(B,diag_B)

if nargin<2
    diag_B = 1;
end


if isvector(B)
    n_pairs = length(B);
    n_rois = (1+sqrt(1+8*n_pairs))/2;
    C = ones(n_rois);
    C = triu(C,1);
    C(C>0) = B(:);  
    C = C + C';
    C(logical(eye(n_rois))) = diag_B;
else
    C = triu(B,1);
    Ctmp = triu(1+abs(B),1);
    C = C(Ctmp~=0);
    C = C(:);
end
