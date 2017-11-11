function output = timeFibLoop(n)
    if (~ischar(n) && isreal(n) && n>=0 && round(n)==n)
        output.n = n; %the nth term
        output.fib = getFib(n); %returns the value of the nth term
        output.runtime = timeit(@() getFib(n)); %the amount of time it takes
        return
    else
        disp('The input argument is not a non-negative integer!');
        return
    end   
    
    function fib = getFib(n_int)
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            num1 = 0;
            num2 = 1;
            for l = 1:n_int
                %store first num in temp, switch, then sum
                temp = num1;
                num1 = num2;
                num2 = temp + num2;
            end
            %num1 has the answer always
            fib = num1;
        end
    end
end