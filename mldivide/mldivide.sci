/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
The mldivide function computes the left matrix division of sys1 and sys2.
The function checks if the number of input arguments are equal to 2, else it throws an error.
The function calculates the inverse of sys1. Then the sizes of sys1 and sys2 are calculated.
If the rows of sys1 and the columns of sys2 are equal then sys1 is multiplied with sys2.
If the dimensions are incompatible, it throws an error.
Calling Sequence :
      sys = mldivide(sys1, sys2)
Parameters :
      sys1 : A matrix, LTI object, State space model
      sys2 : A matrix, LTI object, State space model
 
*/

function sys = mldivide(sys1, sys2)
    if nargin() ~= 2 then  
        error("lti: mldivide: this is a binary operator");
    end
    sys1 = pinv(sys1);  
    [p1, m1] = size(sys1);
    [p2, m2] = size(sys2);
   
    if (m1 ~= p2) then
       error("lti: mldivide: system dimensions incompatible");
    else
       sys = sys1 * sys2;  
    end
endfunction
