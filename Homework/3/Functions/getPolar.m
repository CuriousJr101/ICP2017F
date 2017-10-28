function P = getPolar(C) %takes an input as a structure || ouput is a struct
    if(isfield(C, 'x') && isfield(C, 'y'))
        P.r = sqrt(power(C.x, 2) + power(C.y, 2));
        P.phi = atan(C.y/C.x);
        %calculates the radius and phi of the cartesian coords and puts them into a new structure
        
    else
        P = 'The fields are not x and y. Please try again with another structure';
        %if the fields aren't there, then there is an error in the struct
    end
end