function output = robustWebRead(s)
    try
        disp('Reading data from web...')
        disp('Done')
        output = webread(s);
    catch
        output = [];
        disp('Reading data from the web address...')
        disp('Warning: The requested web address does not exist! Gracefully exiting...')
    end
end