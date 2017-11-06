function ans = getLargestPrime(input)
    for n = input:-1:2
        if(isprime(n))
            ans = n;
            break;
        end
    end
end