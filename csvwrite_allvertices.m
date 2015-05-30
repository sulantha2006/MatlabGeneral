function csvwrite_allvertices( volumeData, leftpath, rightpath)
    l_final = volumeData(1:40962);
    r_final = volumeData(40963:81924);
    csvwrite(leftpath,l_final');
    csvwrite(rightpath,r_final');
end

