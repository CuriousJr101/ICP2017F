%This part of the program tests when you don't switch doors
rng('shuffle');
nExperiments = 10000;
y = zeros(10000, 1);
x = zeros(10000, 1);
counter = 0;
for n = 1:nExperiments
    x(n) = n;
    winningDoor = randi(3);
    choice = randi(3);
    if(winningDoor == choice)
        counter = counter + 1;
    end
    y(n) = counter/n;
end
plot(x, y);
disp(['Probability: ' num2str(counter/nExperiments)])
saveas(gca, 'Not Changing Doors.fig');