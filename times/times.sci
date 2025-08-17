/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
      The times function gives the element-by-element multiplication product of inputs.
      It is similar to "sys1 .* sys2"
      The number of arguments passed must be equal to 2.
Calling Sequence:
      sys = times(sys1,sys2)
Parameters:
      sys1,sys2 - LTI object or Matrices
*/
function sys = times (sys1, sys2)
  if (argn(2) <> 2) then
    error("lti: times: this is a binary operator");
  end
  [p1, m1] = size(sys1);
  [p2, m2] = size(sys2);
  if (p1 ~= p2 | m1 ~= m2) then
    if (p1 == 1 & m1 == 1 & p2*m2 > 1) then      % sys1 SISO
      sys1 = repmat(sys1, p2, m2);
    elseif (p2 == 1 & m2 == 1 & p1*m1 > 1) then  % sys2 SISO
      sys2 = repmat(sys2, p1, m1);
    elseif (p1 == p2 & m2 == 1 & m1 > 1) then     
      sys2 = repmat(sys2, 1, m1);
    elseif (m1 == m2 & p2 == 1 & p1 > 1) then
      sys2 = repmat(sys2, p1, 1);
    else
      error(msprintf("lti: times: system dimensions incompatible: (%dx%d) .* (%dx%d)", p1, m1, p2, m2));
    end
  end
  sys = sys1 .* sys2;
endfunction

