1).

```MATLAB
>> InVec = [-20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40];
>> convertTempFor(InVec, 'C2F')

ans =

    -4     5    14    23    32    41    50    59    68    77    86    95   104

>> convertTempWhile(InVec, 'C2F')

ans =

    -4     5    14    23    32    41    50    59    68    77    86    95   104

>> convertTempVec(InVec, 'C2F')

ans =

    -4     5    14    23    32    41    50    59    68    77    86    95   104
```

---

```MATLAB
>> InVec = [-72, -64, -18, -9, 18, 100, 212, 999];
>> convertTempFor(InVec, 'F2C')

ans =

  -57.7778  -53.3333  -27.7778  -22.7778   -7.7778   37.7778  100.0000  537.2222

>> convertTempWhile(InVec, 'F2C')

ans =

  -57.7778  -53.3333  -27.7778  -22.7778   -7.7778   37.7778  100.0000  537.2222

>> convertTempVec(InVec, 'F2C')

ans =

  -57.7778  -53.3333  -27.7778  -22.7778   -7.7778   37.7778  100.0000  537.2222
```

2).

```MATLAB
>> InVec = [-20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40];
>> tic, convertTempFor(InVec, 'C2F'), toc

ans =

    -4     5    14    23    32    41    50    59    68    77    86    95   104

Elapsed time is 0.001369 seconds.
>> InVec = [-20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40];
>> tic, convertTempWhile(InVec, 'C2F'), toc

ans =

    -4     5    14    23    32    41    50    59    68    77    86    95   104

Elapsed time is 0.000885 seconds.
>> InVec = [-20, -15, -10, -5, 0, 5, 10, 15, 20, 25, 30, 35, 40];
>> tic, convertTempVec(InVec, 'C2F'), toc

ans =

    -4     5    14    23    32    41    50    59    68    77    86    95   104

Elapsed time is 0.000579 seconds.
```

3).

```
>> extractLetter
MATLAB is a strange, but popular programming language
```

4).

The program takes the square root of 2 multiple times, 1 time to 60 times, and then squares the number the same number of times and displays the original number and the new number after the operations. Using the fprintf function, it tells the user the number of times that the number was square rooted and squared and then prints the original number and the new number. What we notice is that the new number isn't exactly two, sometimes being slightly higher and sometimes being all the way down to one.

The reason that we do not recover 2 after so many iterations is because of the size of the class double. Double can only hold 64 bits of information and one problem it amplifies is the rounding error. Since *sqrt(2)* is an irrational number, it has an infinite number of digits after the decimal and in order to store the number in the double class, it has to be cut off one the capcity is reached. This "rounding error" makes the number less accurate than the actually value of the square root and the multiplicative and square root operations amplify that error so that after square rooting and squaring it 60 times, the error has made it all the way to the most significant digits.

5).

The code sets the variable **eps** equal to 1. The while loops continually divides **eps** by two until the is so small that, when it is added to 1 it still gives us 1, hence making the while condition false. Within the while loop, the program also dispays the current value of **eps** before dividing it. Once it breaks from the while loop, it displays the final value of **eps**.

The while condition, 1 ~= 1 + **eps** can be false when **eps** = 1.1102e-16. This is because when you add this to one, the value returned by the program is 1 which makes the conditional statement false.

6).

```MATLAB
>> getLargestPrime(11)

ans =

    11

>> getLargestPrime(2000)

ans =

        1999

>> getLargestPrime(1000000)

ans =

      999983

>> getLargestPrime(123)

ans =

   113
```

7).

A).

```MATLAB
>> fib
Please enter a non-negative integer or type stop: 10
	fib(10) = 55
	average runtime: 1.047e-05 seconds
Please enter a non-negative integer or type stop: 15
	fib(15) = 610
	average runtime: 0.00012121 seconds
Please enter a non-negative integer or type stop: 20
	fib(20) = 6765
	average runtime: 0.00072428 seconds
Please enter a non-negative integer or type stop: 25
	fib(25) = 75025
	average runtime: 0.0080951 seconds
Please enter a non-negative integer or type stop: 30
	fib(30) = 832040
	average runtime: 0.087958 seconds
Please enter a non-negative integer or type stop: 35
	fib(35) = 9227465
	average runtime: 0.95066 seconds
Please enter a non-negative integer or type stop: stop
>>
```

B). & C).

```MATLAB
>> fibLoop
Please enter a non-negative integer or type stop: 10
	fib(10) = 55
	average runtime: 3.4695e-06 seconds
Please enter a non-negative integer or type stop: 15
	fib(15) = 610
	average runtime: 0.00010102 seconds
Please enter a non-negative integer or type stop: 20
	fib(20) = 6765
	average runtime: 0.00073586 seconds
Please enter a non-negative integer or type stop: 25
	fib(25) = 75025
	average runtime: 0.0075896 seconds
Please enter a non-negative integer or type stop: 30
	fib(30) = 832040
	average runtime: 0.082309 seconds
Please enter a non-negative integer or type stop: 35
	fib(35) = 9227465
	average runtime: 0.92251 seconds
Please enter a non-negative integer or type stop: stop
>> 
```

The runtimes from fibLoop is faster than the runtimes from fib. This implies that the for loop in fibLoop is faster than the recusive function in fib. This is because recursion requires a two step process while the for loop only requires a single step process. The recursive function goes to the very last recursive call and then begins to evaluate as it goes back out to return the answer of the other recursions. While the for loop only has to iterate through the addition steps once, not having to find the 'most nested function call'.

8).

A).

```MATLAB
>> timeFib(30)

ans = 

  struct with fields:

          n: 30
        fib: 832040
    runtime: 0.0827

>> timeFib('meme')
The input argument is not a non-negative integer!
>> timeFibLoop(30)

ans = 

  struct with fields:

          n: 30
        fib: 832040
    runtime: 3.2117e-06

>> timeFibLoop('meme')
The input argument is not a non-negative integer!
```

B). 

The files are in the repository

---

Extra Credit:

```Please enter a non-negative integer or type stop: 12
	fib(12) = 144
	average runtime: 3.1793e-06 seconds
Please enter a non-negative integer or type stop: 10
	fib(10) = 55
	average runtime: 1.1413e-05 seconds
Please enter a non-negative integer or type stop: 6
	fib(6) = 8
	average runtime: 3.0085e-06 seconds
Please enter a non-negative integer or type stop: stop
```
