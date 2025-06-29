/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Description :
Return the transpose of A.
This function and A.' are equivalent.
This code is written only for the transpose of state-space models.
Calling Sequence :
B = transpose(A)
Parameter :
A — A state-space model with parameters A, B, C, and D.
Note: Scilab's syslin does not take 5 inputs (i.e., A, B, C, D, E).
Scilab does not support inname, outname, ingroup, or outgroup features.
Dependencies :
__transpose__
*/
function sys = __transpose__ (sys)
  a = sys.a;
  b = sys.b;
  c = sys.c;
  d = sys.d;
 [rows,cols] = size(a);
 sys.a = a.';
 sys.b = c.';
 sys.c = b.';
 sys.d = d.';
endfunction

function sys = transpose(sys)
  if argn(2) ~= 1 then
    error("lti: transpose: this is an unary operator");
  end
  [p , m] = size(sys);
  sys = __transpose__(sys);

endfunction

