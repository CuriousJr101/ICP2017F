function ans = getLargestPrime(input)
    %starts from the input number and iterates downward
    for n = input:-1:2
        %once the first prime is found, it is assumed to be the largest
        %since we started from the input and then we exit the loop
        if(isprime(n))
            ans = n;
            break;
        end
    end
end