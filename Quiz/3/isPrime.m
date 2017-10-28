%this is based on the fact that the input is proper
function bool = isPrime(n)
    sq = floor(sqrt(n)); %tells us the number of cases that we need to check
    bool = test(n, sq);
    function prime = test(n, sq)
        if(n == 1)
            prime = false;
        elseif(n == 0)
            prime = '0 is a special number that is neither prime nor composite';
        elseif(sq > 1 && mod(n, sq))
            prime = true;
            test(n, (sq - 1));
        elseif(sq > 1 && mod(n, sq) == 0) %if the number can be divided by another number, then it isn't prime
            prime = false;
        elseif(sq == 1) %this notes that 2 and 3 are prime (their mod is 1)
            prime = true;
        end
    end
end