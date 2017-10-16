1).

```MATLAB
>> normalDistribution(1, 0, 2)
ans =
    0.1760
```

Checking on wolfram, the function works correctly.

2).

```MATLAB
>> eggBoilingTime(4, 100, 70) % To = 4, Tw = 100, Ty = 70

ans =

  396.5763

>> eggBoilingTime(20, 100, 70) % To = 20, Tw = 100, Ty = 70

ans =

  315.2179
```

3).

```MATLAB
>>>conversionPolarAndCartesian
Cartesian Structure with Correct Transformation:
    x: 5
    y: 3

      r: 5.8310
    phi: 0.5404

Cartesian Structure with Error in Transformation:
    r: 5
    y: 3

The fields are not x and y. Please try again
-------------------------------------------------
Polar Structure with Correct Transformation
      r: 9
    phi: 45

    x: 4.7279
    y: 7.6581

Polar Structure with Error in Transformation
      x: 9
    phi: 45

The fields are not r and phi. Please try again.
```
