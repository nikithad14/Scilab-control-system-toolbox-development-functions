/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
      The mrdivide function computes the right matrix division of sys1 and sys2.
      The function checks if the number of input arguments are equal to 2, else it throws an error.
      The function calculates the inverse of sys2. Then the sizes of sys1 and sys2 are calculated.
      If the rows of sys1 and the columns of sys2 are equal then sys1 is multiplied with sys2.
      If the dimensions are incompatible, it throws an error.
Calling Sequence :
      sys = mrdivide(sys1, sys2)
Parameters :
      sys1 : A matrix, Lti object or a state space model
      sys2 : A matrix,Lti object or a state space model
  */

function sys = mrdivide(sys1, sys2)
    if nargin() ~= 2 then  
        error("lti: mrdivide: this is a binary operator");
    end
    sys2 = pinv(sys2);  
    [p1, m1] = size(sys1);
    [p2, m2] = size(sys2);
    if (m1 ~= p2) then
        error("lti: mrdivide: system dimensions incompatible");
    else
        sys = sys1 * sys2;  
    end
    
endfunction
  



