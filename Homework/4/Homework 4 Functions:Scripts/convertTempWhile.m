function temps = convertTempWhile(inputArray, str)
    temps = zeros(1, length(inputArray));
    n = 1;
    % n is going to count each of the indices in inputArray
    if(isequal(str, 'F2C'))
        while(n <= length(inputArray))
            temps(n) = (inputArray(n) - 32)*(5/9);
            n = n + 1;
        end
    elseif(isequal(str, 'C2F'))
        while(n <= length(inputArray))
            temps(n) = (9/5)* inputArray(n) + 32;
            n = n + 1;
        end
    else
        disp('Make sure you are using uppercase letters')
    end
end

