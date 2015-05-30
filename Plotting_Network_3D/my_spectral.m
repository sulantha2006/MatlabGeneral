function m = my_spectral

n_colors = 512;
s = spectral(n_colors);
n_tails = round(n_colors/20);
m = s(n_tails:n_colors-n_tails,:);

