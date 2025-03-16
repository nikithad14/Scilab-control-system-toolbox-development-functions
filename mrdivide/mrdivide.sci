/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
 Dependencies :
      inv
 Calling Sequence :
      sys = mrdivide(sys1, sys2)
Parameters :
      sys1 : A matrix
      sys2 : A square matrix
Description:
      The mrdivide function computes the right matrix division of sys1 and sys2
      The function first checks that sys2 is a square matrix and that the number of columns in sys1 matches
      the number of rows in sys2.
      If these conditions are met, it computes the inverse of sys2 and multiplies it with sys1.
      If sys2 is not square or if the dimensions are incompatible, it throws an error.*/  

function sys = mrdivide(sys1, sys2)
    if nargin() ~= 2 then  
        error("lti: mrdivide: this is a binary operator");
    end
    [p1, m1] = size(sys1);
    [p2, m2] = size(sys2);

    if p2 ~= m2 then
        error("lti: mrdivide: sys2 must be a square matrix");
    end
    if (m1 ~= p2) then
        error("lti: mrdivide: system dimensions incompatible");
    else
        sys2 = inv(sys2);  
        sys = sys1 * sys2;  
    end
endfunction
  



