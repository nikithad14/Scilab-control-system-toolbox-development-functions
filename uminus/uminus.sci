/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
      The uminus function gives the unary minus of the LTI object.
      This function and - A are equivalent. 
      The number of arguments passed must be equal to 1.
      The function first calculates the size of the input argument and creates an identity matrix of size pxp.
      The identity matrix is negated and then multiplied with the input.
      The result is the unary minus of the input sys.
Calling Sequence :
      sys = uminus(sys)
Dependencies : eye,size
Parameters :
      sys : A LTI object
      p (scalar): Number of rows in sys
      m (scaler) : Number of columns in sys

*/
function sys = uminus(sys)
    if nargin() ~= 1
        error("lti: uminus: this is an unary operator");
    end
    [p, m] = size(sys);
    // Create a negative identity matrix of size p x p
    out_scl = -eye(p);
    // Multiply sys by the negative identity matrix
    sys = out_scl * sys;
endfunction
