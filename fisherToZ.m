function [ zMat ] = fisherToZ( r )
%Get the Fisher transformed Z matrix

zMat = 0.5*log((1+r)./(1-r));

end

