%{
takes the file on the website and stores the data into a file on the
%}
fileTrigger = fopen('trigger.txt', 'w');
triggers = webread('http://www.shahmoradi.org/ICP2017F/homework/5-problems/triggers.txt');
fprintf(fileTrigger, triggers);
fclose(fileTrigger);

fileTriggerRead = fopen('trigger.txt', 'r');
vec = strsplit(fscanf(fileTriggerRead, '%c'), '\n');
for n = 1:length(vec)
    website = ['http://www.shahmoradi.org/ICP2017F/homework/5-problems/swift/GRB', vec{n}, '_ep_flu.txt'];
    try
        hiddenFile = webread(website);
    catch
        continue;
    end
    fileHidden = fopen(['GRB', vec{n}, '_ep_flu.txt'], 'w');
    fprintf(fileHidden, hiddenFile);
    fclose(fileHidden);
end