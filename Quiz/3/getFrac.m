function product = getFrac(n)
    if(n > 0)
        product = n * getFrac(n - 1);
    end
end
