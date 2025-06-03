/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Description:
      Return the horizontal concatenation of N-D array objects, array1, array2, …, arrayN along dimension 2. 
      Arrays may also be concatenated horizontally using the syntax for creating new matrices.
      For example: A = [ array1, array2, ... ] 
      It uses `cat(2, ...)` internally to form a single row-wise matrix.
      All input arguments must have the same number of rows.
Calling Sequence:
      dat = horzcat(A, B, C, ...)
Parameters:
      A, B, C, ...  - Matrices, vectors, or scalars to be concatenated horizontally
      dat           - Output matrix after horizontal concatenation
Dependencies:
      cat, varargin

*/

function dat = horzcat(varargin)
    dat = cat(2, varargin(:)); 
endfunction



