function [root1, root2] = getRoot(a, b, c)
    part1 = sqrt(b^2 - 4*a*c);
    root1 = (-b + part1)/(2*a);
    root2 = (-b - part1)/(2*a);
end
