/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
 Dependencies :
      inv
 Calling Sequence :
      sys = mldivide(sys1, sys2)
Parameters :
      sys1 : A square matrix
      sys2 : A matrix
Description:
     The mldivide function computes the left matrix division of sys1 and sys2 
     The function first checks that sys1 is a square matrix and that the number of columns in sys1 matches the number of rows in sys2. 
     If these conditions are met, it computes the inverse of sys1 and multiplies it with sys2. 
     If sys1 is not square or if the dimensions are incompatible, it throws an error.*/
function sys = mldivide(sys1, sys2)
    if nargin() ~= 2 then  
        error("lti: mldivide: this is a binary operator");
    end
    [p1, m1] = size(sys1);
    [p2, m2] = size(sys2);
    
    if p1 ~= m1 then
        error("lti: mldivide: sys1 must be a square matrix");
    end
    if (m1 ~= p2) then
       error("lti: mldivide: system dimensions incompatible");
    else
       sys1 = inv(sys1);  
       sys = sys1 * sys2;  
    end
endfunction
