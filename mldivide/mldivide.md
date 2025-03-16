# mldivide
## Dependencies :
      inv
## Calling Sequence :
      sys = mldivide(sys1, sys2)
## Parameters :
      sys1 : A square matrix
      sys2 : A matrix
## Description:
     The mldivide function computes the left matrix division of sys1 and sys2 by solving the equation sys1 * X = sys2 for X. 
     The function first checks that sys1 is a square matrix and that the number of columns in sys1 matches the number of rows in sys2. 
     If these conditions are met, it computes the inverse of sys1 and multiplies it with sys2. 
     If sys1 is not square or if the dimensions are incompatible, it throws an error.
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
      sys = mldivide(sys1, sys2);
##
      lti: mldivide: sys1 must be a square matrix 
## 3
      sys1 = [1, 2; 3, 4];
      sys2 = [5, 6];  
      sys = mldivide(sys1, sys2);
##
      lti: mldivide: system dimensions incompatible
## 4
      sys1 = [2, -1, 3; 4, 5, -2; -3, 1, 2];
      sys2 = [6; 7; 8];
      sys = mldivide(sys1, sys2);
##
        0.036144578313253
        2.493975903614458
        2.807228915662651
## 5
      sys1 = [];
      sys2 = [6; 7; 8];
      sys = mldivide(sys1, sys2);   
##
      lti: mldivide: system dimensions incompatible
