/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Calling Sequence:
      dat = merge(A1, A2, ..., An)
Parameters:
      A1, A2, ..., An - Input matrices or scalars to be merged along the 3rd dimension
      dat             - Output array formed by concatenating inputs along 3rd dimension 
Dependencies:
      varargin, cat
Description:
      This function merges any number of input matrices (scalars or arrays) along the third dimension.
      It uses Scilab’s `varargin` to accept a variable number of input arguments and concatenates them
      using the `cat` function.
*/

function dat = merge(varargin)
    dat = varargin(1);  
    for i = 2:length(varargin)
        dat = cat(3, dat, varargin(i));
    end
endfunction




