# mrdivide
## Description:
- The mrdivide function computes the right matrix division of sys1 and sys2.
- The function checks if the number of input arguments are equal to 2, else it throws an error.
- The function calculates the inverse of sys2. Then the sizes of sys1 and sys2 are calculated.
- If the rows of sys1 and the columns of sys2 are equal then sys1 is multiplied with sys2.
- If the dimensions are incompatible, it throws an error.
## Calling Sequence 
`sys = mrdivide(sys1, sys2)`
## Parameters 
- `sys1` : A matrix, LTI object or a state space model
- `sys2` : A matrix,LTI object or a state space model

# Examples:
## 1
      sys1 = [4 8; 2 6];  
      sys2 = [1 2; 3 4];  
      sys_o = mrdivide(sys1, sys2)
##
         4.                  8.882D-16
         5.                  -1.
## 2
    sys1 = [3 6; 1 4];  
    sys2 = [2 4 6; 1 3 5];  
    sys = mrdivide(sys1, sys2)
##
    lti: mrdivide: system dimensions incompatible
## 3
    sys1 = [1 2; 3 4];  
    sys2 = [5 6];  
    sys = mrdivide(sys1, sys2)
##
         0.2786885
         0.6393443
## 4
      sys1 = [1 2; 3 4];  
      sys2 = [];  
      sys = mrdivide(sys1, sys2)
##
       lti: mrdivide: system dimensions incompatible
## 5
      sys1 = [];
      sys2 = [6; 7; 8];
      sys = mrdivide(sys1, sys2)   
##
      lti: mrdivide: system dimensions incompatible

