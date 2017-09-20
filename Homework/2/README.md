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
