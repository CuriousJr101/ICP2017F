function s = sizeOfDirectory(direction)
    %temp is the structure of the directory with the specified direction
    temp = dir(direction);
    s = sum([temp.bytes]);
    %sum up all of the bytes in temp without having to change the directory that we are currently in 
end