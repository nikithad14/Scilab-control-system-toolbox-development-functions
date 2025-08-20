# times
## Description
- The times function gives the element-by-element multiplication product of inputs.
- It is similar to "sys1 .* sys2"
- The number of arguments passed must be equal to 2.
## Calling Sequence
`sys = times(sys1,sys2)`
## Parameters
- `sys1` - LTI system or Matrix
- `sys2` - LTI system or Matrix

# Examples
## 1
     sys1 = [-1 5 0];
     sys2 = [1 0 -7];
     sys = times(sys1,sys2)
##
     -1   0   0
## 2
      sys1 = [1,2;3,4];
      sys2 = [1,2;3,4];
      sys = times(sys1,sys2)
##
      1    4
      9    16
## 3
     sys = times()
##
     lti: times: this is a binary operator
## 4
    sys1 = [1 2 3 4];
    sys2 = [];
    sys = times(sys1,sys2)
##
    lti: times: system dimensions incompatible: (1x4) .* (0x0)
## 5
    sys1 = [1 2 3 4];
    sys2 = [0];
    sys = times(sys1,sys2)
##
     0   0   0  0

## 6
```
sys1 = [1 5 9*%i;6 3 1;8*%i 6 3*%i];
sys2 = [%i 10 7*%i];
times(sys1,sys2)
```
##
```

   0. + i     50. + 0.i  -63. + 0.i
   0. + 6.i   30. + 0.i   0.  + 7.i
  -8. + 0.i   60. + 0.i  -21. + 0.i
```
## 7
```
sys1 = [1+2*%i,  3-%i;  4+%i,    5+6*%i]; 
sys2 = [2-%i,  1+3*%i;  -%i,   4];
times(sys1,sys2)
```
##
```
   4. + 3.i   6.  + 8.i 
   1. - 4.i   20. + 24.i
```
