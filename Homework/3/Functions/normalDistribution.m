 %calculates the normal distribution
function norm = normalDistribution(x, mu, sigma)
    norm = (1/(sqrt(2 * pi) * sigma)) * exp(-0.5 * ((x - mu)/sigma)^2);
    %the calculation comes directly from the formula
end