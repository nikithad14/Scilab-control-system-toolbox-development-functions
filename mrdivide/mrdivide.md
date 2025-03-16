# mrdivide
## Dependencies :
      inv
## Calling Sequence :
      sys = mrdivide(sys1, sys2)
## Parameters :
      sys1 : A matrix
      sys2 : A square matrix
## Description:
      The mrdivide function computes the right matrix division of sys1 and sys2
      The function first checks that sys2 is a square matrix and that the number of columns in sys1 matches
      the number of rows in sys2.
      If these conditions are met, it computes the inverse of sys2 and multiplies it with sys1.
      If sys2 is not square or if the dimensions are incompatible, it throws an error.
# Examples:
## 1
      sys1 = [4 8; 2 6];  
      sys2 = [1 2; 3 4];  
      sys_o = mrdivide(sys1, sys2);
##
         4.                  0.
         4.999999999999999  -1.
## 2
    sys1 = [3 6; 1 4];  
    sys2 = [2 4 6; 1 3 5];  
    sys_o = mrdivide(sys1, sys2); 
##
    lti: mrdivide: sys2 must be a square matrix
## 3
    sys1 = [1 2; 3 4];  
    sys2 = [5 6];  
    sys_o = mrdivide(sys1, sys2); 
##
      lti: mrdivide: system dimensions incompatible
## 4
      sys1 = [1 2; 3 4];  
      sys2 = [];  
      sys_o = mrdivide(sys1, sys2); 
##
       lti: mrdivide: system dimensions incompatible
## 5
      sys1 = [];
      sys2 = [6; 7; 8];
      sys = mrdivide(sys1, sys2);   
##
      lti: mrdivide: system dimensions incompatible

