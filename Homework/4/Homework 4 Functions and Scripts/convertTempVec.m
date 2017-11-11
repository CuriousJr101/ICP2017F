function temp = convertTempVec(inputArray, str)
    if(isequal(str, 'F2C'))
        temp = (inputArray - 32)*(5/9);
    elseif(isequal(str, 'C2F'))
        temp = (9/5) * inputArray + 32;
    end
end