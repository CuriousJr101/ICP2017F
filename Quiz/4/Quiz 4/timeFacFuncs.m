disp(['average runtime for getFacWhile(1700000): ' num2str(timeit(@() getFacWhile(1700000))) ' seconds'])
disp(['average runtime for getFacFor(1700000): ' num2str(timeit(@() getFacFor(1700000))) ' seconds'])
disp(['average runtime for getFacVec(1700000): ' num2str(timeit(@() getFacVec(1700000))) ' seconds'])