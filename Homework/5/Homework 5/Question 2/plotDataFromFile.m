files = dir('Data Points to Plot/*.txt');
counter = 0;
for n = files'
    table = readtable(['Data Points to Plot/', n.name]);
    if(~isempty(table))
        if(all(table{:,2} < 0.0)) 
            table{:,2} = exp(table{:,2});
            counter = counter + 1;
            scatter(table{:, 2}, table{:, 1}, 1, 'MarkerFaceColor', 'r', ...
                'MarkerEdgeColor', 'r', 'MarkerFaceAlpha', 0.01, 'MarkerEdgeAlpha', 0.01);
            hold on;
        end
    else
        continue;
    end
        
end

%Adding details to the graph
title('Plot of Epeak vs. Fluence for 650 Swift GRB events', 'fontsize', 13);
y_label_locations = logspace(0, 4, 5);
x_label_locations = logspace(-8, -2, 4);
xlabel('Fluence [ergs/cm^2]', 'fontsize', 13);
ylabel('Epeak', 'fontsize', 13);
set(gca, 'yTick', y_label_locations, 'xTick',x_label_locations, 'YScale', 'log', 'XScale', 'log', 'linewidth', 3);
saveas(gca, '650 Swift GRB Events.png')

disp(['Number of files used: ' num2str(counter)])