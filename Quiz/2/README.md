1).

------------ 

(A) - Assembly

(B) - No

------------

2). 

(A) - Fortran

(B) - 1980s

3).

(A) - Assembly

(B) - Third Generation

4). - 1990s

5). - Assembly

6). - C

7). - Fortran and C++ 

8).

```MATLAB
>> c = cell(2, 2);
c{1, 1} = [1 3 -7; 2 0 6; 0 5 1];
c{2, 1} = [3+4i, -5; 10i, 3-4i];
c{1, 2} = 'This is a text string';
```

9).

c{2} gives you the contents [3+4i, -5; 10i, 3-4i, '']. This is becasue Matlab stores data column-wise.

10).

Matlab stores information column-wise. This means that the the values within a column are adjecent to each other in a memory block on the computer. When Matlab has to render a matrix or cell array, the program pulls information column-wise, building the matrix/cell array top to bottom. Matlab does this because it inherited this from its predeccessor program Fortran.

11).

8 bytes

12).

The new number will the largest value that int32 can be.

