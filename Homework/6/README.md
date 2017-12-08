1). 

# Plotting the Subplots in a Single Figure

```MATLAB
clear all;
close all;
load('data3D.mat');

%{
The creation of all the plots and then storing them all onto a single
figure
%}

%Data values used to size
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Main Plot
numRows = 4;
numColumns = 4;
mainPlotTopSpace = 0.06;
mainPlotBottomSpace = 0.10;
mainPlotLeftSpace = 0.08;
mainPlotRightSpace = 0.09;
mainPlotXAxisPosition = 0.05;
mainPlotYAxisPosition = 0.07;
mainPlotWidth = 1 - mainPlotLeftSpace - mainPlotXAxisPosition;
mainPlotHeight = 1 - mainPlotTopSpace - mainPlotYAxisPosition;

%Sub Plot
subPlotSpacing = 0.04;
subPlotWidth = (1 - mainPlotLeftSpace - mainPlotRightSpace - numRows * subPlotSpacing)/numColumns;
subPlotHeight = (1 - mainPlotTopSpace - mainPlotBottomSpace - numColumns * subPlotSpacing)/numRows;

%Creating the Color Bar
colorBarWidth = 0.03;
colorBarYPosition = mainPlotBottomSpace;
colorBarXPosition = 1 - mainPlotRightSpace;
colorBarHeight = numRows * subPlotHeight + (numRows - 1) * subPlotSpacing;
colorBarLimits = [0, max(max(max(data(:, :, :))))];

%Creating the Figure
figurePlot = figure();
figurePlot.Visible = 'on';
figurePlot.Position = [0, 0, 900, 1350];
figurePlot.Color = [.94 .94 .94];

%Building the mainPlot
mainPlot = axes();
mainPlot.Color = 'none';
mainPlot.Position = [mainPlotXAxisPosition mainPlotYAxisPosition mainPlotWidth mainPlotHeight];
mainPlot.XLabel.String = 'Voxel Number in X Direction';
mainPlot.XLabel.Visible = 'on';
mainPlot.YLabel.String = 'Voxel Number in Y Direction';
mainPlot.YLabel.Visible = 'on';
mainPlot.XTick = [];
mainPlot.YTick = [];
mainPlot.XAxis.Visible = 'off';
mainPlot.YAxis.Visible = 'off';
mainPlot.Title.String = 'Plotting a 4x4 Grid for 16 Slices of a Rat''s Brain';
mainPlot.Title.FontSize = 13;

%Adding the Color Bar
axes(mainPlot);
caxis(colorBarLimits);
cbar = colorbar;
cbar.YLabel.String = 'Number of Tumor Cells';
cbar.YLabel.FontSize = 10;
cbar.Position = [colorBarXPosition colorBarYPosition colorBarWidth colorBarHeight];

%Adding the subPlots
imageSlice = 0;
for row = numRows:-1:1
    for column = 1:numColumns
        imageSlice = imageSlice + 1;
        subPlot = axes('position', [(column - 1)*(subPlotSpacing + subPlotWidth) + mainPlotLeftSpace ...
                                    (row - 1)*(subPlotSpacing+subPlotHeight) + mainPlotBottomSpace ...
                                     subPlotWidth ...
                                     subPlotHeight ...
                                    ]);
                                
        imagesc(data(:, :, imageSlice), colorBarLimits);
        hold on;
        title(['Z = ' num2str(imageSlice)]);
        if(column ~= 1 && row ~= 1)
            xticks([]);
            yticks([]);
        elseif(column == 1 && row ~= 1)
            xticks([]);
        elseif(column ~= 1 && row == 1)
            yticks([]);
        end
    end
end

saveas(gcf, 'subPlots of Rat Brain.png');

```

# Plot

![Plot Image](https://github.com/CuriousJr101/ICP2017F/blob/master/Homework/6/Homework%206/subPlots_of_Rat_Brain.png)

---

---


2).

# Drawing Boundaries Around the Tumor Cells

```MATLAB
clear all;
close all;
load('data3D.mat');

%{
The creation of all the plots and then storing them all onto a single
figure
%}

%Data values used to size
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Main Plot
numRows = 4;
numColumns = 4;
mainPlotTopSpace = 0.06;
mainPlotBottomSpace = 0.10;
mainPlotLeftSpace = 0.08;
mainPlotRightSpace = 0.09;
mainPlotXAxisPosition = 0.05;
mainPlotYAxisPosition = 0.07;
mainPlotWidth = 1 - mainPlotLeftSpace - mainPlotXAxisPosition;
mainPlotHeight = 1 - mainPlotTopSpace - mainPlotYAxisPosition;

%Sub Plot
subPlotSpacing = 0.04;
subPlotWidth = (1 - mainPlotLeftSpace - mainPlotRightSpace - numRows * subPlotSpacing)/numColumns;
subPlotHeight = (1 - mainPlotTopSpace - mainPlotBottomSpace - numColumns * subPlotSpacing)/numRows;

%Creating the Color Bar
colorBarWidth = 0.03;
colorBarYPosition = mainPlotBottomSpace;
colorBarXPosition = 1 - mainPlotRightSpace;
colorBarHeight = numRows * subPlotHeight + (numRows - 1) * subPlotSpacing;
colorBarLimits = [0, max(max(max(data(:, :, :))))];

%Creating the Figure
figurePlot = figure();
figurePlot.Visible = 'on';
figurePlot.Position = [0, 0, 900, 1350];
figurePlot.Color = [.94 .94 .94];

%Building the mainPlot
mainPlot = axes();
mainPlot.Color = 'none';
mainPlot.Position = [mainPlotXAxisPosition mainPlotYAxisPosition mainPlotWidth mainPlotHeight];
mainPlot.XLabel.String = 'Voxel Number in X Direction';
mainPlot.XLabel.Visible = 'on';
mainPlot.YLabel.String = 'Voxel Number in Y Direction';
mainPlot.YLabel.Visible = 'on';
mainPlot.XTick = [];
mainPlot.YTick = [];
mainPlot.XAxis.Visible = 'off';
mainPlot.YAxis.Visible = 'off';
mainPlot.Title.String = 'Plotting a 4x4 Grid for 16 Slices of a Rat''s Brain';
mainPlot.Title.FontSize = 13;

%Adding the Color Bar
axes(mainPlot);
caxis(colorBarLimits);
cbar = colorbar;
cbar.YLabel.String = 'Number of Tumor Cells';
cbar.YLabel.FontSize = 10;
cbar.Position = [colorBarXPosition colorBarYPosition colorBarWidth colorBarHeight];

%Adding the subPlots
imageSlice = 0;
for row = numRows:-1:1
    for column = 1:numColumns
        imageSlice = imageSlice + 1;
        subPlot = axes('position', [(column - 1)*(subPlotSpacing + subPlotWidth) + mainPlotLeftSpace ...
                                    (row - 1)*(subPlotSpacing+subPlotHeight) + mainPlotBottomSpace ...
                                     subPlotWidth ...
                                     subPlotHeight ...
                                    ]);
                                
        imagesc(data(:, :, imageSlice), colorBarLimits);
        hold on; %so that when I plot the boundary, the image stays
        title(['Z = ' num2str(imageSlice)]);
        if(column ~= 1 && row ~= 1)
            xticks([]);
            yticks([]);
        elseif(column == 1 && row ~= 1)
            xticks([]);
        elseif(column ~= 1 && row == 1)
            yticks([]);
        end
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        %drawing the boundaries
        BW = imbinarize(data(:, :, imageSlice));
        B = bwboundaries(BW, 'noholes');
        for n = 1:length(B)
            boundary = B{n};
            plot(boundary(:, 2), boundary(:, 1), 'r', 'linewidth', 4);
            hold on;
        end
    end
end

saveas(gcf, 'subPlots_of_Rat_Brain_with_Boundaries.png');
```

# Plot with Boundaries

![Plot Image](https://github.com/CuriousJr101/ICP2017F/blob/master/Homework/6/Homework%206/subPlots_of_Rat_Brain_with_Boundaries.png)

---

---

3).

# Regression

findBestFitParameters.m

```MATLAB
load('Drand.mat');
global dataSet;
dataSet = Drand;
param = [1, 10];
vals = fminsearch(@getLogProbNorm, param);
disp(['Mu: ' num2str(vals(1)) ' , Sigma: ' num2str(vals(2))]);
```

getLogProbNorm.m (this is a function)

```MATLAB
function  totalLogProbNorm = getLogProbNorm(param)
    global dataSet;
    logProb = zeros(length(dataSet), 1);
    for n = 1:length(dataSet)
        logProb(n) = log(normpdf(dataSet(n), param(1), param(2)));
    end
    totalLogProbNorm = -1 * sum(logProb);
end
```

# Output

```MATLAB
>> findBestFitParameters
Mu: -0.082001 , Sigma: 1.0043
```
