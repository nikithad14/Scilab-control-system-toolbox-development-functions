/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
      The append function groups LTI models by appending their inputs and outputs.
      The number of arguments passed must be greater than 0.
      The blockdiag() function creates a block diagonal matrix from the series of inputs passed.
Calling Sequence:
      sys = append(sys1,sys2,sys3....sysN)
Parameters:
      sys1,sys2,...sysN - A LTI object, real and complex matrix, state space models.
      sys - The resulting appended LTI or real or complex matrix or a state space model.

*/
function sys = append(varargin)
    // Check if no arguments are passed
    if argn(1) == 0 then
        error();
    end
    //Else Combine into a block-diagonal matrix
    sys = blockdiag(varargin(:));
endfunction

