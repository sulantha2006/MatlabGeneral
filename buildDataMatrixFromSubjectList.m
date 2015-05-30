function [ resultMat ] = buildDataMatrixFromSubjectList( subjectListFile )
%This function will build vertex matrix across all subjects specified in
%the subjectListFile. 

impD = importdata(subjectListFile);
subjectList = cell2dataset(impD.textdata);

[n m] = size(subjectList);
mat = [];
for i = 1:n
    t = csvread(subjectList{i,1});
    mat = [mat;t'];
end

resultMat = mat;

end

