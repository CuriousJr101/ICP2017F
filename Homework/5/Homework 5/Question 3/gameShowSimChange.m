rng('shuffle');
nExperiments = 10000;
%this part of the program tests when you switch doors
counter = 0;
y = zeros(10000, 1);
x = zeros(10000, 1);
for n = 1:nExperiments
    selections = randi(3, [1, 2]);
    if(selections(1) == selections(2))
    selections(2) = selections(2) + 1;
        if(selections(2) > 3)
           selections(2) = 1;
        end
    else
        selections(2) = selections(1);
    end
    
    if(selections(1) == selections(2))
        counter = counter + 1;
    end
    x(n) = n;
    y(n) = counter/n; 
end
plot(x,y);
disp(['Probability: ' num2str(counter/nExperiments)])
saveas(gca, 'Changing Doors.fig');