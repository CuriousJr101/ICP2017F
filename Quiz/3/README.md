1). When you multiply two matrices together, the .* function multiplies each element in the first matrix with the corresponding element in the second matrix. Where as simply multiplying the two matrices without the . before the * does straight matrix multiplication. NOTE: The first matrix must have the same number of rows as the second matrix for the multiplication command to run.

```MATLAB
>> matrix1 = [1, 2; 3, 4]

matrix1 =

     1     2
     3     4

>> matrix2 = [9, 8; 7, 6]

matrix2 =

     9     8
     7     6

>> matrix1 .* matrix2

ans =

     9    16
    21    24

>> matrix1 * matrix2

ans =

    23    20
    55    48
```

NOTE: The first matrix must have the same number of rows as the second matrix for the multiplication command to run.

```MATLAB
>> matrix2 = [9, 8; 7, 6; 5, 4]

matrix2 =

     9     8
     7     6
     5     4

>> matrix1 * matrix2
Error using  * 
Inner matrix dimensions must agree.
 ```

2).

Code:

```MATLAB
A = [1, 0, 3];
B = [2, 3, 7];
product = A(1)*B(1) + A(2)*B(2) + A(3)*B(3);
fprintf('Dot Product: %d\n', product)
```

Output:

```MATLAB
>> practiceInClass
Dot Product: 23
```

3).

Script is saved to the Git hub.

Part A).

Output:

```MATLAB
>> testString
Enter a string: 'MATLAB'

ans =

  logical

   1

>> testString
Enter a string: 'MLATEB'

ans =

  logical

   0
```


Part B:

The other function is isequal(). The difference is that with the isequal() function, any string with different sizes can be tested without the program breaking down. On the other hand, with ==, the string that is inputed must be the same size as 'MATLAB'.

Example:

```MATLAB
>> testString
Enter a string: 'LOLCATS'
Matrix dimensions must agree.

Error in testString (line 3)
    if(user == 'MATLAB')
```

With isequal()

```MATLAB
>> testString
Enter a string: 'akshkkjhasd'

ans =

  logical

   0
```

4).

First Difference: 

The double or symbol, **||**, is the more efficient code because it stops the code once the first true value, from the different cases, is found while the single or symbol **|** would continue till the end.

Difference 2:

We can only use the single or symbol, **|** to compare logcial vectors.


```MATLAB
>> matrix1 | matrix2

ans =

  2×2 logical array

   1   1
   1   1

>> matrix1 || matrix2
Operands to the || and && operators must be convertible to logical scalar values.
```

5).

Add the not symbol:

```MATLAB
>> a = 1;
b = 0;
x ~= a/b>10.0

ans =

  logical

   0
```

6).

It takes MATLAB 0.071165 seconds to create AOS while it takes 0.000791 seconds to create SOA. Based off these times, SOA is the most efficient way of creating a structure of students. The reason being is firstly, the ouput is in a user-friendly way, and secondly, each field is instantiated on one line rather than multiple lines.

7).

The script is on GitHub

```MATLAB
>> [root1, root2] = getRoot(3, 4, 2)

root1 =

  -0.6667 + 0.4714i


root2 =

  -0.6667 - 0.4714i
```

8).

```
>> integralAns = @(a, b, c)integral(@(x)x.^2+c.*x+1, a, b)

integralAns =

  function_handle with value:

    @(a,b,c)integral(@(x)x.^2+c.*x+1,a,b)
```

Test:

```MATLAB
>> integralAns(1, 2, 4)

ans =

    9.3333
```

9).

```MATLAB
>>>getFrac(3)

ans =

	6
```
