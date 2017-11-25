function [] = PIApproximationPlot(nExperiments)
    rng('shuffle');
    coords = rand(2, nExperiments);
    x = zeros(1, nExperiments);
    y = zeros(1, nExperiments);
    pointsInsideCircle = 0;
    for n = 1:length(coords)
        distance = sqrt((coords(1, n))^2 + (coords(2, n))^2);
        if(distance <= 1)
            pointsInsideCircle = pointsInsideCircle + 1;
        end
        x(n) = n;
        y(n) = (4)*(pointsInsideCircle/n);
    end
    plot(x, y);
    saveas(gca, 'PI Approximation.png');
end

