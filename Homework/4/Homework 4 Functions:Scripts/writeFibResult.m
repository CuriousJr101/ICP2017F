warning('off');
arrayOfNums = [10, 3, 5, 7, 12, 20, 23, 32, 15, 19, 27, 29];

fibID = fopen('fibOuput.txt', 'w');
fprintf(fibID, '%3s %10s %16s\n','N','Fib', 'Runtime');
fprintf(fibID, '%3s %10s %16s\n', '-', '---', '--------');
for n = arrayOfNums
    structure = timeFib(n);
    fprintf(fibID, '%3d %10d %18.7e\n', structure.n, structure.fib, structure.runtime);
end
fclose(fibID);

fibLoopID = fopen('fibLoopOutput.txt', 'w');
fprintf(fibLoopID, '%3s %10s %16s\n','N','Fib', 'Runtime');
fprintf(fibLoopID, '%3s %10s %16s\n', '-', '---', '--------');
for n = arrayOfNums
    structure = timeFibLoop(n);
    fprintf(fileID, '%3d %10d %18.7e\n', structure.n, structure.fib, structure.runtime);
end
fclose(fibLoopID);
