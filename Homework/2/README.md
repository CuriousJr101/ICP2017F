1).

```MATLAB
>> a = 1

a =

	1
```

This command creates a 1x1 double array variable *a* that has a value of 1 and is added to the workspace.

```MATLAB
>> b = 'x'

b =

    'x'
```

This command creates a 1x1 character arrat variable *b* that has a value of 'x' and is added to the workspace.

```MATLAB
>> c = true

c =

  logical

   1
```

This command creates a 1x1 boolean (logical) array variable *c* that has a value of true (true is shorthand for the logical value 1)and is added to the workspace.

```MATLAB
>> whos a b c
  Name      Size            Bytes  Class      Attributes

  a         1x1                 8  double               
  b         1x1                 2  char                 
  c         1x1                 1  logical              
```

This command , the **whos** function, lists the variables a, b, and c with their array size, the number of bytes, the class, and any attributes.

```MATLAB
>> a == c

ans =

  logical

   1
```

The command determines whether a has the same value as c. Since both a and c (logical 1 = 1) are equal to one, the function returns true. Since the value wasn't assigned to a variable, the default variable *ans* (which became a logical variable) is added to the workspace with the value of logical 1.

```MATLAB
>> a + c

ans =

     2
```

The command finds the summation of a and c. Since there is no variable that's being assigned the value of the summation, the default variable *ans* is given the 1x1 double aarray value of 2 (a = 1 and c = 1). Since there was a previous *ans* in the workspace, it rewrites the value of the variable.

```MATLAB
>> d = [1 2 3 4]

d =

     1     2     3     4
```

This commands constructs a 1x4 double array, for the variable *d*, and is added to the workspace. The array is a four-element vector.

```MATLAB
>> e = ['a' 'b' 'c' 'd']

e =

    'abcd'
```

This commands constructs a 1x4 char array, for the variable *e*, and is added to the workspace. In the output the characters are squished together because that is just the syntax of Matlab. This is the first way of creating a char array and is a four-element vector.

```MATLAB
>> f = ['abcd']

f =

    'abcd'
```

This commands constructs a 1x4 char array, for the variable *f*, and is added to the workspace. The array is a four-element vector and is the second way of creating a char array. 

```MATLAB
>> g = {"a" "b" "c" "d"}

g =

  1×4 cell array

    ["a"]    ["b"]    ["c"]    ["d"]
```

This command constructs a 1x4 cell array, for the variable g, in which each cell has a single string letter.

```MATLAB
>> h = {a b c d}

h =

  1×4 cell array

    [1]    'x'    [1]    [1×4 double]
```

This command constructs a 1x4 cell array, for the variable h, in which each cell is equal to the value of the variable that was defined previously.

```MATLAB
>> whos d e f g h 
  Name      Size            Bytes  Class     Attributes

  d         1x4                32  double              
  e         1x4                 8  char                
  f         1x4                 8  char                
  g         1x4               976  cell                
  h         1x4               491  cell                
```

This command, the **whos** function, lists the variables d, e, f, g, and h with their array size, the number of bytes, the class, and any attributes.

2).

If we attempt to type cast an integer that is not within the range of the type of integer that we are using, then it will limit the value to either one of the extremes of the integer type.

```MATLAB
>>> i = int8(600)

i =

  int8

   127
```

The number will either become the largest value of the specific type of integer, if its larger, or the smallest value of that integer, if the number is smaller.

```MATLAB
>> intmin('int16')

ans =

  int16

   -32768

>> intmax('int16')

ans =

  int16

   32767
```

```MATLAB
>> intmin

ans =

  int32

   -2147483648

>> intmax

ans =

  int32

   2147483647
```

3).

```MATLAB
>> 1/2

ans =

    0.5000
```

The quotient of "1 divided by 2" is a double 0.5000.

```MATLAB
>> 1\2

ans =

     2
```

The quotient of "2 divided by 1" is a double 2. The backward slash rotates the fraction that is types so that the denominator is in the numerator and vice versa.

```MATLAB
>> int8(1/2)

ans =

  int8

   1
```

The quotient of "1 divided by 2" is a double 0.5000, but because we are type casting the number into a type of integer, the number gets rounded up or down based on rounding rules. Therefore, because 0.5000 rounds up to 1, we get an int8 value of 1.

```MATLAB
>> int8(1/3)

ans =

  int8

   0
```

The quotient of "1 divided by 3" is a double 0.333, but because we are type casting the number into a type of integer, the number gets rounded up or down based on rounding rules. Therefore, because 0.333 rounds down to 0, we get an int8 value of 0.

```MATLAB
>> -5^2

ans =

   -25
```

This expression can be thought of as -1 * 5^2. Based of PEMDAS rules, the exponent gets evaluated first. Then the answer is negated because of the -1, giving us the answer of -25.

```MATLAB
>> (-5)^2

ans =

    25
```

Here, we are raising the value of -5 to the power of two rather than just 5, as in the previous question. Ultimately, two negtives make a positive and 5^2 is 25. Therefore, with all of those in mind, we get the answer of 25.

```MATLAB
>> 10-6/2

ans =

     7
```

MATLAB follows the rules of PEMDAS. The program first finds the quotient of "6 divided by 2" (which is 3), then subtracts that from 10. This gives 
us the answer of 7.

```MATLAB
>> 5*4/2*3

ans =

    30
```

MATLAB, once again, follows the rules of PEMDAS. Since multiplication and division are at the "same level", whichever operations comes first, the program will execute. Here, the computer finds the product of "5 times 4" (20) then divides that with 2 (10) and finally multiplies 3 to the quotient, giving us a final answer of 30.

4). B:

```MATLAB
>> a + b

ans =

     0     2
     2     2
```

Each element in matrix *A* is added to the corresponding element in matrix *B*. 

```MATLAB
>> a .* b

ans =

    -1     0
     0     1
```

Each element in matrix *A* is multiplied to the corresponding element in matrix *B*.

```MATLAB
>> a * b

ans =

    -1     2
    -2     5
```

The program multiplies matrix *A* with matrix *B*. A row of matrix *A* is multplied with all the columns of matrix *B*. The sum of the multipication of each element in the row and column yields an elemental value. Then the program moves onto the next row and multiplies it with all of the columns. It continues this till it gets through all of the rows.

```MATLAB
>> a * c

ans =

     3
     8
```

The program multiplies matrix *A* with matrix *C*. Each element in the row and each corresponding element in the column is mutiplied together. The summation of the products yields an element for the new matrix *AC*.

```MATLAB
>> a + c

ans =

     4     3
     4     3
```

The program does element-wise addition between matrix *A* and matrix *C*.

```MATLAB
>> a + d

ans =

     6     5
     7     6
```

The program added the scaler value (d) with each element in matrix *A*.

```MATLAB
>> a .* d

ans =

     5     0
    10     5
```

Each element in matrix *A* is multiplied by the 1x1 matrix *D* which has the value of 5.

```MATLAB
>> a * d

ans =

     5     0
    10     5
```

Each element in matrix *A* is multiplied by the scaler value of *D*.

5). Three different methods for producing matrix *A*:

```MATLAB
>> a

a =

     2     0     0
     0     2     0
     0     0     2
```

Method 1: Diag function

```MATLAB
>> diag([2 2 2])

ans =

     2     0     0
     0     2     0
     0     0     2
```

Method 2: Eye function

```MATLAB
>> 2 * eye(3)

ans =

     2     0     0
     0     2     0
     0     0     2
```

Method 3: Zeros function

```MATLAB
>> zeros(3) + [2 0 0; 0 2 0; 0 0 2]

ans =

     2     0     0
     0     2     0
     0     0     2
```

6).