# merge
## Calling Sequence:
      dat = merge(A1, A2, ..., An)
## Parameters:
      A1, A2, ..., An - Input matrices or scalars to be merged along the 3rd dimension
      dat             - Output array formed by concatenating inputs along 3rd dimension 
## Dependencies:
      varargin, cat
Description:
      This function merges any number of input matrices (scalars or arrays) along the third dimension.
      It uses Scilab’s `varargin` to accept a variable number of input arguments and concatenates them
      using the `cat` function.
## Examples
## 1
      A = [1];
      B = [5];
      merge(A, B)
##
      (:,:,1)
      
         1.
      (:,:,2)
      
         5.

## 2
      A = [1 2; 3 4];
      B = [5 6; 7 8];
      res = merge(A, B);
##
      (:,:,1)
      
         1.   2.
         3.   4.
      (:,:,2)
      
         5.   6.
         7.   8.

## 3
      A = [1 2; 3 4];
      B = [5 6; 7 8];
      C = [9 10; 11 12];
      res = merge(A, B, C);
##
      (:,:,1)
      
         1.   2.
         3.   4.
      (:,:,2)
      
         5.   6.
         7.   8.
      (:,:,3)
      
         9.    10.
         11.   12.

## 4
      A = [7 8; 9 10];
      res = merge(A);
##
         7.   8. 
         9.   10.

## 5
      A = [1 2];
      B = [3 4];  
      res = merge(A, B);

##
      (:,:,1)
      
         1.   2.
      (:,:,2)
      
         3.   4.
