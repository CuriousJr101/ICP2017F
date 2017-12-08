load('Drand.mat');
global dataSet;
dataSet = Drand;
param = [1, 10];
vals = fminsearch(@getLogProbNorm, param);
disp(['Mu: ' num2str(vals(1)) ' , Sigma: ' num2str(vals(2))]);