function t = eggBoilingTime(M, To) 
%The inputs are mass of the egg (M) and the original temperature of the egg (To)
    c = 3.7; %J*g^?1*K^?1
    p = 1.038; %g*cm^-3
    K = .0054; %W*cm^-1*K^-1
    x = (power(M,2/3) * c * power(p, 1/3))/(K*power(pi,2)*power((4*pi/3),2/3));
    t = x * log(0.76 * (To - 100)/(70 - 100)); 
    %outputs the time it takes for the center of the yoke to reach a certain temp
end
