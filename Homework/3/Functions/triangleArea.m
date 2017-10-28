
function area = triangleArea(vertices) 
%input must be a nested 1x2 array in a 1x3 cell array

    x2y3 = vertices{1,2}(1) * vertices{1,3}(2); %calculates the product for each part of the formula
    x3y2 = vertices{1,3}(1) * vertices{1,2}(2);
    x1y3 = vertices{1,1}(1) * vertices{1,3}(2);
    x3y1 = vertices{1,3}(1) * vertices{1,1}(2);
    x1y2 = vertices{1,1}(1) * vertices{1,2}(2);
    x2y1 = vertices{1,2}(1) * vertices{1,1}(2);
    

area = (1/2) * abs(x2y3 - x3y2 - x1y3 + x3y1 + x1y2 -x2y1);
%calculates that final area using the provided formula
end