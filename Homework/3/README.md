1).

```MATLAB
>> normalDistribution(1, 0, 2)
ans =
    0.1760
```

Checking on wolfram, the function works correctly.

2).

```MATLAB
>> eggBoilingTime(67, 4)

ans =

  396.5763

>> eggBoilingTime(67, 20)

ans =

  315.2179
```

3).

```MATLAB
C = struct('x', 4, 'y', 6)

C = 

  struct with fields:

    x: 4
    y: 6

>> P = getPolar(C)

P = 

  struct with fields:

      r: 7.2111
    phi: 0.9828

>> C = struct('r', 4, 'y', 6)

C = 

  struct with fields:

    r: 4
    y: 6

>> P = getPolar(C)

P =

    'The fields are not x and y. Please try again'

```

---------

```MATLAB
>> P = struct('r', 9, 'phi', 45)

P = 

  struct with fields:

      r: 9
    phi: 45

>> C = getCart(P)

C = 

  struct with fields:

    x: 4.7279
    y: 7.6581

>> P = struct('x', 9, 'phi', 45)

P = 

  struct with fields:

      x: 9
    phi: 45

>> C = getCart(P)

C =

    'The fields are not r and phi. Please try again.'
```

4).

PATH = /Users/CuriousJr101/Code/Matlab

```MATLAB
sizeOfDirectory('/Users/CuriousJr101/Code/Matlab')

ans =

        6148
```

PATH = /Users/CuriousJr101/Code/Matlab/COE

```MATLAB
sizeOfDirectory('/Users/CuriousJr101/Code/Matlab/COE')

ans =

       10112
```


5).

```MATLAB
>> fib
Please enter a non-negative integer or type stop: sadfasdf
The input argument is not a non-negative integer! Try again
Please enter a non-negative integer or type stop: 
The input argument is not a non-negative integer! Try again
Please enter a non-negative integer or type stop: -123
The input argument is not a non-negative integer! Try again
Please enter a non-negative integer or type stop: 1.234
The input argument is not a non-negative integer! Try again
Please enter a non-negative integer or type stop: 1213sad
The input argument is not a non-negative integer! Try again
Please enter a non-negative integer or type stop: 0
fib(0) = 0
Please enter a non-negative integer or type stop: 1
fib(1) = 1
Please enter a non-negative integer or type stop: 2
fib(2) = 1
Please enter a non-negative integer or type stop: 3
fib(3) = 2
Please enter a non-negative integer or type stop: 4
fib(4) = 3
Please enter a non-negative integer or type stop: 5
fib(5) = 5
Please enter a non-negative integer or type stop: 6
fib(6) = 8
Please enter a non-negative integer or type stop: 7
fib(7) = 13
Please enter a non-negative integer or type stop: 8
fib(8) = 21
Please enter a non-negative integer or type stop: 9
fib(9) = 34
Please enter a non-negative integer or type stop: 10
fib(10) = 55
Please enter a non-negative integer or type stop: 11
fib(11) = 89
Please enter a non-negative integer or type stop: 22
fib(22) = 17711
Please enter a non-negative integer or type stop: 32
fib(32) = 2178309
Please enter a non-negative integer or type stop: stop
Closing script
```

6).

The input is supposed to be a 1x3 cell array that has a nest 1x2 array, as the x and y coordinate pair, in each index of the cell array.

Example: **{[3,4], [-5,0], [8,10]}**

```MATLAB
>> triangleArea({[1,2],[-3,4],[2,6]})

ans =

     9
```


7).

```MATLAB
>> isPrime(23)

ans =

  logical

   1

>> isPrime(12)

ans =

  logical

   0

>> isPrime(199)

ans =

  logical

   1

>> isPrime(12453)

ans =

  logical

   0

>> isPrime(49)

ans =

  logical

   0
```
