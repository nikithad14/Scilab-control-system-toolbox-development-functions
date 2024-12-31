function sys = repsys (varargin)
  if (nargin == 0)
    error();
  end
  sys = repmat (varargin(:)); 
endfunction
A = [1, 2; 3, 4];          
B = repsys(A, 2, 3);       
disp(B);
