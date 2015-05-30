function [ resultMat ] = readmultiValuedData( subjectList )
[n m] = size(subjectList);
mat = [];
for i = 1:n
    t = csvread(subjectList{i,1});
    mat = [mat;t'];
end

resultMat = mat;

end

