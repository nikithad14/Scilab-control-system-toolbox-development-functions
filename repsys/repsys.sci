/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
     The repsys function forms a block transfer matrix of sys with m copies vertically and n copies horizontally. 
     If n is not specified, it is set to m. 
     repsys (sys, 2, 3) is equivalent to [sys, sys, sys; sys, sys, sys].
Calling Sequence :
      sys = repsys(sys,m,n)
      sys = repsys(sys,m)
      sys = repsys(sys,[m,n])
Parameters :
      sys : A LTI system or a matrix
      m (scalar): Number of rows to be repeated
      n (scalar) : Number of columns to be repeated

*/
function sys = repsys (varargin)
  if (nargin == 0)
    error();
  end
  sys = repmat (varargin(:)); 
endfunction
