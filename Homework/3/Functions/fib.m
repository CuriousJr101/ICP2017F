function fib()
    %This section makes sure that what the user enters is appropriately used
    n = input('Please enter a non-negative integer or type stop: ', 's');
    %tests to make sure the string is a number, not a decimal and non-negative
    if(str2double(n) ~= 'N' && mod(str2double(n), 1) == 0 && str2double(n) >= 0)
        disp(['fib(' , n , ') = ' , num2str(getFib(str2double(n)))]);
        fib();
    elseif (isequal(n, 'stop'))
        disp('Closing script')
    else
        disp('The input argument is not a non-negative integer! Try again')
        fib();
    end
    %this does the actual calculation, requires the user to enter what term of the sequence they want
    function num = getFib(n)
        if(n == 0)
            num = 0;
        elseif(n == 1)
            num = 1;
        else
            %takes the previous two numbers and adds them together for the next number
            num = getFib(n - 1) + getFib(n-2);
        end
    end
end
