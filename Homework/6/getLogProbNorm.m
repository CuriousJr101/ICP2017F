function  totalLogProbNorm = getLogProbNorm(param)
    global dataSet;
    logProb = zeros(length(dataSet), 1);
    for n = 1:length(dataSet)
        logProb(n) = log(normpdf(dataSet(n), param(1), param(2)));
    end
    totalLogProbNorm = -1 * sum(logProb);
end