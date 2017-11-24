rng(131313);
table = readtable('students.csv');
groups = cell(1, 99);
l = 1;

for n = randperm(99)
    groups(l) = table.Student__________________(n);
    l = l + 1;
end
groupReshaped = reshape(groups, 33, 3);

%writing the file to an excel spreadsheet
fileExcel = fopen('outputGroups.csv', 'w');
for n = 1:size(groupReshaped)
    for l = 1:3
        fprintf(fileExcel, '%s,', groupReshaped{n, l});
    end
    fprintf(fileExcel, '\n');
end
fclose(fileExcel);