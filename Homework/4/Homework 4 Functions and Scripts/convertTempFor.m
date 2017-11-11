function temps = convertTempFor(inputArray, str)
    temps = zeros(1, length(inputArray)); %so that memeory is already allocated
    a = 1;
    % a is to help iterate through the temps array
    if(isequal(str, 'F2C'))
        for n = inputArray
            temps(a) = (n - 32)*(5/9);
            a = a + 1;
        end
    elseif(isequal(str, 'C2F'))
        for n = inputArray
            temps(a) = (9/5)* n + 32;
            a = a + 1;
        end
    else
        disp('Make sure you are using uppercase letters')
    end
end