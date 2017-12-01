n = webread('http://www.shahmoradi.org/ICP2017F/quiz/5-problems/chain.txt', 'nFunctionCall', 1);
Table = strsplit(n, '\n');
nVals = zeros(1, length(Table) - 1);
GrowthRate = zeros(1, length(Table) - 1);
for i = 2:length(Table)-1
    cell = strsplit(Table{1, i}, ' ');
    nVals(i - 1) = str2double(cell{1, 2});
    GrowthRate(i - 1) = str2double(cell{1, 5});
end

plot(nVals, GrowthRate, 'red', 'linewidth', 3)
xlabel('Sample Number');
ylabel('Growth Rate');
set(gca, 'XScale', 'log');

