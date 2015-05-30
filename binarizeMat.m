function [ binMat ] = binariseMat( m, threshold, type )
%Binarise the matrix m based on threshold.
%type can have either l or g.
switch type
    case 'l'
        m(m<threshold) = 0.01;
        m(m>=threshold) = 0.09;
        m(m==0.01) = 1;
        m(m==0.09) = 0;
    case 'g'
        m(m>threshold) = 1;
        m(m<=threshold) = 0;
end
binMat = m;
end

