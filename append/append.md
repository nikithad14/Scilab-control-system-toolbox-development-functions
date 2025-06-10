# append
## Description
- The append function groups LTI models by appending their inputs and outputs.
- The number of arguments passed must be greater than 0.
- The blockdiag() function creates a block diagonal matrix from the series of inputs passed.
## Calling Sequence
`sys = append(sys1,sys2,sys3....sysN)`
## Parameters
- `sys1,sys2,...sysN` -  A LTI object, real and complex matrix, state space models.
- `sys` - The resulting appended LTI or real or complex matrix or a state space model.

# Examples
## 1
      A = [1, 2; 3, 4];
      sys = append(A)
##
      1    2   
      3    4   
## 2
      A = [1, 2; 3, 4];
      B = [5, 6];
      sys = append(A, B)
##
      1    2    0    0
      3    4    0    0
      0    0    5    6     
## 3
     sys = append()
##
     invalid index
## 4
    A = [1, complex(2,3); 3, complex(4,-2)];
    B = [5, 6; 7, 8];
    sys = append(A, B)
##
    1 + 0.i   2 + 3.i   0 + 0.i   0 + 0.i  
    3 + 0.i   4 - 2.i   0 + 0.i   0 + 0.i  
    0 + 0.i   0 + 0.i   5 + 0.i   6 + 0.i  
    0 + 0.i   0 + 0.i   7 + 0.i   8 + 0.i
## 5
      A = [1];
      B = [1 1];
      C = [1 1;1 1];
      append(A,B,C)
##
         1.   0.   0.   0.   0.
         0.   1.   1.   0.   0.
         0.   0.   0.   1.   1.
         0.   0.   0.   1.   1.


