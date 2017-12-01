function output = robustWebRead(s)
    try
        disp('Reading data from web...')
        disp('Done')
        output = webread(s);
    catch
        output = [];
    end
end