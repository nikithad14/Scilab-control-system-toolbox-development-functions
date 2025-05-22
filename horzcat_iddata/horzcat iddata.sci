/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Calling Sequence:
      dat = horzcat(A, B, C, ...)
Parameters:
      A, B, C, ...  - Matrices, vectors, or scalars to be concatenated horizontally
      dat           - Output matrix after horizontal concatenation
Dependencies:
      cat, varargin
Description:
      Horizontally concatenates all input arguments along the second dimension.
      It uses `cat(2, ...)` internally to form a single row-wise matrix.
      All input arguments must have the same number of rows.
*/

function dat = horzcat(varargin)
    dat = cat(2, varargin(:)); 
endfunction



