function func = genFunc(varargin)
%all the coefficients are stored in an array so that we only need to change if the user adds numbers
    array = [0, 0, 0];
    if(nargin <= 3)
        switch nargin
            case 1
                if(isreal(varargin{1}))
                    array(1) = varargin{1};
                    func = evalFunc(array);
                end
            case 2
                if(isreal(varargin{1}) && isreal(varargin{2}))
                    array(1) = varargin{1};
                    array(2) = varargin{2};
                    func = evalFunc(array);
                end
            case 3
                if(isreal(varargin{1}) && isreal(varargin{2}) && isreal(varargin{3}))
                    array(1) = varargin{1};
                    array(2) = varargin{2};
                    array(3) = varargin{3};
                    func = evalFunc(array);
                    
                end
        end
    else
        %If the user puts more than 3 numbers, then there is an error
        disp('Enter at most 3 args')
    end
    
    %{
    the function takes the modified array and then creates a function
    handler with the contents of the array as the coefficients of the quadratic function
    %}
    function y=evalFunc(a)
        y = @(x)(a(1)*x^2 + a(2)*x + a(3));
    end
end 