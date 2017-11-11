function fibLoopExtraCredit()
    warning('off');
    
    n = input('Please enter a non-negative integer or type stop: ','s');
    if strcmp(n,'stop')
        return
    else
        n = str2double(n);
        if isreal(n)
            if n>=0 && round(n)==n
                disp([char(9), 'fib(',num2str(n),') = ',num2str(getFib(n))]);
                disp([char(9), 'average runtime: ', num2str(timeit(@() getFib(n))), ' seconds']);
                fib()
                return
            end
        end
        disp('The input argument is not a non-negative integer!');
        fib()
    end
    
    function fib = getFib(n_int)
        if n_int == 0
            fib = 0;
        elseif n_int == 1
            fib = 1;
        else
            %creates a n + 1 sized array in which we can have all the
            %values of the the fib sequence and then we can just output the
            %last value of the array
            fibArray = zeros(n_int + 1, 1);
            fibArray(1) = 0;
            fibArray(2) = 1;
            for l = 3:n_int + 1
                fibArray(l) = fibArray(l-1) + fibArray(l-2);
            end
            fib = fibArray(n_int + 1);
        end
    end

end