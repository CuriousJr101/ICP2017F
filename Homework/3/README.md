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
Please enter a non-negative integer or type stop: -123
The input argument is not a non-negative integer! Try again
Please enter a non-negative integer or type stop: 342.673
The input argument is not a non-negative integer! Try again
Please enter a non-negative integer or type stop: asefas
The input argument is not a non-negative integer! Try again
Please enter a non-negative integer or type stop: 
The input argument is not a non-negative integer! Try again
Please enter a non-negative integer or type stop: 1a2
The input argument is not a non-negative integer! Try again
Please enter a non-negative integer or type stop: a3
The input argument is not a non-negative integer! Try again
Please enter a non-negative integer or type stop: 2
1
Please enter a non-negative integer or type stop: 4
3
Please enter a non-negative integer or type stop: 5
5
Please enter a non-negative integer or type stop: 7
13
Please enter a non-negative integer or type stop: 20
6765
Please enter a non-negative integer or type stop: 100
3.54224848179262e+20
Please enter a non-negative integer or type stop: stop
Closing script
```

