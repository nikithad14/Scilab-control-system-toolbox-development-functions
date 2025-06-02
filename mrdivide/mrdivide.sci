/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
      The mrdivide function computes the right matrix division of sys1 and sys2
      The function first checks that sys2 is a square matrix and that the number of columns in sys1 matches
      the number of rows in sys2.
      If these conditions are met, it computes the inverse of sys2 and multiplies it with sys1.
      If sys2 is not square or if the dimensions are incompatible, it throws an error.
Calling Sequence :
      sys = mrdivide(sys1, sys2)
 Dependencies :
      pinv
Parameters :
      sys1 : A matrix
      sys2 : A matrix
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
  



