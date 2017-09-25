1).

```MATLAB
>> a = 1

a =

	1
```

This command creates a 1x1 double array variable, *a*, that has a value of 1 and is added to the workspace.

```MATLAB
>> b = 'x'

b =

    'x'
```

This command creates a 1x1 character array variable, *b*, that is the character 'x' and is added to the workspace.

```MATLAB
>> c = true

c =

  logical

   1
```

This command creates a 1x1 boolean (logical) array variable, *c*, that has a logical value of 1 (true is shorthand for the logical value 1) and is added to the workspace.

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

The command finds the sum of a and c. Since there is no variable that's being assigned the value of the summation, the default variable *ans* is given the double value of 2 (a = 1 and c = 1). Since there was a previous *ans* in the workspace, it rewrites the value of the variable.

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

This commands constructs a 1x4 char array, for the variable *e*, and is added to the workspace. In the output the characters are concatenated because the characters are in square brackets. This is the first way of creating a char array.

```MATLAB
>> f = ['abcd']

f =

    'abcd'
```

This commands constructs a 1x4 char array, for the variable *f*, and is added to the workspace. This is the second way of creating a char array. 

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

This command constructs a 1x4 cell array, for the variable h, in which each cell is equal to the value associated with each variable, that was defined previously.

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

If we attempt to type cast an integer that is not within the range of the type of integer that we are using, then it will change the value to either one of the extremes of the integer type.

```MATLAB
>>> i = int8(600)

i =

  int8

   127
```

The number will either become the largest value of the specific type of integer, if number in the parenthesis is larger, or the smallest value of that integer, if the number is smaller.

```MATLAB
>> intmin('int16') %minimum value

ans =

  int16

   -32768

>> intmax('int16') %maximum value

ans =

  int16

   32767
```

```MATLAB
>> intmin %minimum value

ans =

  int32

   -2147483648

>> intmax %maximum value

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

The quotient of "1 divided by 2" is a double 0.5000. Both of the numbers are predefined as doubles.

```MATLAB
>> 1\2

ans =

     2
```

The quotient of "2 divided by 1" is a double 2. The backward slash rotates the fraction so that the denominator is in the numerator and vice versa.

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

This expression can be thought of as -1 * 5^2. Based on PEMDAS rules, the exponent gets evaluated first. Then the answer is negated because of the -1, giving us the answer of -25.

```MATLAB
>> (-5)^2

ans =

    25
```

Here, we are raising the value of -5 to the power of two rather than just 5, as in the previous question. Multiplying two negtives make a positive and 5^2 is 25. Therefore we get the answer of 25.

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

MATLAB, once again, follows the rules of PEMDAS. Since multiplication and division are on the "same level", whichever operations comes first, the program will execute. Here, the computer finds the product of "5 times 4" (20) then divides that with 2 (10) and finally multiplies 3 to the quotient, giving us a final answer of 30.

4). 

B:

```MATLAB
>> a + b

ans =

     0     2
     2     2
```

Each element in matrix *a* is added to the corresponding element in matrix *b*. 

```MATLAB
>> a .* b

ans =

    -1     0
     0     1
```

Each element in matrix *a* is multiplied to the corresponding element in matrix *b*.

```MATLAB
>> a * b

ans =

    -1     2
    -2     5
```

The program goes through matrix multiplication of *a* and *b* to give us a new matrix *ab*.

```MATLAB
>> a * c

ans =

     3
     8
```

The program goes through matrix multiplication of *a* and *c* to give us a new matrix *ac*.

```MATLAB
>> a + c

ans =

     4     3
     4     3
```

The program does element-wise addition with matrix *a* and matrix *c*.

```MATLAB
>> a + d

ans =

     6     5
     7     6
```

The program added the scaler value (d) to each element in matrix *a*.

```MATLAB
>> a .* d

ans =

     5     0
    10     5
```

Each element in matrix *a* is multiplied by the 1x1 matrix *d* which has the value of 5.

```MATLAB
>> a * d

ans =

     5     0
    10     5
```

Each element in matrix *a* is multiplied by the scaler value of *d*.

5). Three different methods for producing matrix *a*:

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

6). Persian is an array while Spanish is a cell array. In order for the output to be *Persian is not the same as Spanish*, we need to partition each of the arrays. 

For Persian, in order to get the string *Persian*, we partition the character array using parenthesis, with the range from 1-7 since the string is a concatination of characters (we need all 7 characters).

For Spanish, in order to get the string *Spanish*, we partition the cell array which should do two things: focus on a specific cell itself AND getting the contents of that cell. We can do both steps using curly brackets. This allows us to get the actual contents of the cell rather than just the type.

Altogether, we get characters through the two methods mentioned above and when we add these variables into the display method, we get the proper output.


7). When running myscript in the command window, the program graphs the function ( abs(sin(x)) ) in a new separate window. The x-axis goes from -8 to 8 and the y-axis goes from 0 to 1. The graph of the abs(sin(x)) peaks 4 times.

8). When you attempt to run myscript.m from another directory, you get an error:

```MATLAB
>> myscript
Undefined function or variable 'myscript'.
 ```

This error occurs because after moving out from mynewdir, we are in a new directory that doesn't contain the *myscript.m* file.