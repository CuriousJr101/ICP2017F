function ans = ExtraCredit(n)
    if (n == 0)
        ans = 1;
    else
        ans = sum(ones(prod(1:1:n), 1));
    end

end