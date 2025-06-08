# mldivide
## Description:
- The mldivide function computes the left matrix division of sys1 and sys2.
- The function checks if the number of input arguments are equal to 2, else it throws an error.
- The function calculates the inverse of sys1. Then the sizes of sys1 and sys2 are calculated.
- If the rows of sys1 and the columns of sys2 are equal then sys1 is multiplied with sys2.
- If the dimensions are incompatible, it throws an error.
## Calling Sequence :
`sys = mldivide(sys1, sys2)`
## Parameters :
- `sys1` : A  matrix,Lti object or a state space model
- `sys2` : A matrix,Lti object or a state sace model


# Examples:
## 1
      sys1 = [4, 3; 2, 1];
      sys2 = [5; 6];
      sys = mldivide(sys1, sys2) 
##
      6.5
      -7.
## 2
      sys1 = [1, 2, 3; 4, 5, 6];
      sys2 = [7; 8];
      sys = mldivide(sys1, sys2)
##
        -3.0555556
         0.1111111
         3.2777778
## 3
      sys1 = [1, 2; 3, 4];
      sys2 = [5, 6];  
      sys = mldivide(sys1, sys2)
##
      lti: mldivide: system dimensions incompatible
## 4
      sys1 = [2, -1, 3; 4, 5, -2; -3, 1, 2];
      sys2 = [6; 7; 8];
      sys = mldivide(sys1, sys2)
##
        0.036144578313253
        2.493975903614458
        2.807228915662651
## 5
      sys1 = [];
      sys2 = [6; 7; 8];
      sys = mldivide(sys1, sys2) 
##
      lti: mldivide: system dimensions incompatible
## 6
```
sys1 = [1+2*%i, 3-4*%i; 5+6*%i, 7-8*%i];
sys2 = [2-1*%i; 4+3*%i];
sys = mldivide(sys1, sys2)
```
##
```
   0.5 + 1.25i
   1.  + 0.25i
```
