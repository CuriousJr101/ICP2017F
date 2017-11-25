rng('shuffle');
nExperiments = input('Enter the number of points you want to use: ');
coords = rand(2, nExperiments);
pointsInsideCircle = 0;
for n = 1:length(coords)
    x = coords(1, n);
    y = coords(2, n);
    distance = sqrt(x^2 + y^2);
    if(distance <= 1)
        pointsInsideCircle = pointsInsideCircle + 1;
    end
end
valueOfPi = (4)*(pointsInsideCircle/nExperiments);
disp(['The value of PI is approximated to : ' num2str(valueOfPi)])
        