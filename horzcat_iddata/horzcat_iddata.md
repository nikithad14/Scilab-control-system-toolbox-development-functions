# horzcat
## Description:
- Returns the horizontal concatenation of N-D array objects, array1, array2, …, arrayN along dimension 2. 
- Arrays may also be concatenated horizontally using the syntax for creating new matrices.
- For example: A = [ array1, array2, ... ] 
- It uses `cat(2, ...)` internally to form a single row-wise matrix.
- All input arguments must have the same number of rows.
## Calling Sequence:
`dat = horzcat(A, B, C, ...)`
## Parameters:
- `A, B, C, ...`  - Matrices, vectors, or scalars to be concatenated horizontally
- `dat`           - Output matrix after horizontal concatenation
## Dependencies:
cat, varargin

## Examples 
## 1
    A = [1 2 3];
    B = [4 5 6];
    C = [7 8 9];
    result = horzcat(A, B, C)
##
     1.   2.   3.   4.   5.   6.   7.   8.   9.

## 2
    A = [1; 2];
    B = [3; 4];
    res = horzcat(A, B)
##
     1.   3.
     2.   4.

## 3
    A = [1 2; 3 4];
    B = [5 6; 7 8];
    res = horzcat(A, B)
##
     1.   2.   5.   6.
     3.   4.   7.   8.

## 4
    A = [9 10];
    res = horzcat(A)
##
     9.   10.

## 5
    A = [1];
    B = [5];
    C = [8 9 10];
    res = horzcat(A, B, C)
## 
     1.   5.   8.   9.   10.


