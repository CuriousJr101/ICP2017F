function output = timeFib(n)
    if (~ischar(n) && isreal(n) && n>=0 && round(n)==n)
        output.n = n; %the nth term
        output.fib = getFib(n); %value of the nth term
        output.runtime = timeit(@() getFib(n)); %the time it took
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
            fib = getFib(n_int-1) + getFib(n_int-2);
        end
    end

end