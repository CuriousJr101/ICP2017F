%warnings occur because of the fact that the program sometimes executes the
%command too quickly
warning('off');

%for the recursion
fibID = fopen('fibOuput.txt', 'w');
fprintf(fibID, '%3s %10s %16s\n','N','Fib', 'Runtime');
fprintf(fibID, '%3s %10s %16s\n', '-', '---', '--------');
%this for loop goes through and instantiates the variable structure then
%the information from the structure is called in the fprintf
for n = 1:1:35
    structure = timeFib(n);
    fprintf(fibID, '%3d %10d %18.7e\n', structure.n, structure.fib, structure.runtime);
end
fclose(fibID);

%for the loop
fibLoopID = fopen('fibLoopOutput.txt', 'w');
fprintf(fibLoopID, '%3s %10s %16s\n','N','Fib', 'Runtime');
fprintf(fibLoopID, '%3s %10s %16s\n', '-', '---', '--------');
%this for loop goes through and instantiates the variable structure then
%the information from the structure is called in the fprintf
for n = 1:1:35
    structure = timeFibLoop(n);
    fprintf(fibLoopID, '%3d %10d %18.7e\n', structure.n, structure.fib, structure.runtime);
end
fclose(fibLoopID);
