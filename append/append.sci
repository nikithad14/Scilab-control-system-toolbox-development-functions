/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Dependencies : blockdiag
Calling Sequence
      sys = append(sys1,sys2,sys3....sysN)
Description:
      The append function groups LTI models by appending their inputs and outputs.
      The number of arguments passed must be greater than 0.
      The blockdiag() function creates a block diagonal matrix from the series of inputs passed.
*/
function sys = append(varargin)
    // Check if no arguments are passed
    if argn(1) == 0 then
        error();
    end
    //Else Combine into a block-diagonal matrix
    sys = blockdiag(varargin(:));
endfunction

