/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
      End indexing for LTI objects. 
      Used by Octave for "sys(1:end, end-1)".
Calling Sequence:
      sys = end_lti(sys,k,n)
Parameters:
      sys - A LTI object or a matrix
      k(scalar) - Used for switch case
      n - always 2
Dependencies:
      size,switch
*/
function ret = end_lti(sys, k, n)
    if n ~= 2 then
        error("lti: end: require 2 indices in the expression");
    end
    [p, m] = size(sys);
    select k
        case 1
            ret = p; 
        case 2
            ret = m;
        else
            error(sprintf("lti: end: invalid expression index k = %d", k));
    end
endfunction

