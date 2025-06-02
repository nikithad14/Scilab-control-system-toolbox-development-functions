/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
      The uplus function gives the unary plus of the LTI object.
      Eg. B = uplus(A).This operation is similar to +A.
      The number of arguments passed must be equal to 1.
      The result is the unary plus of the input sys.
Calling Sequence:
      sys = uplus(sys)
Parameters:
      sys - A LTI object
*/
function sys = uplus(sys)
    if nargin ~= 1  // prevent sys = uplus(sys1, sys2, sys3, ...)
        error("lti: uplus: this is an unary operator");
    end
endfunction

