function C = getCart(P) %takes an input as a structure ouput is a struct
    if(isfield(P, 'r') && isfield(P, 'phi'))
        C.x = P.r * cos(P.phi);
        C.y = P.r * sin(P.phi);
        %calculates x and y from polar coords and puts them into a new structure
    else
        C = 'The fields are not r and phi. Please try again.';
        %if the fields aren't there, then there is an error in the struct
    end
end

