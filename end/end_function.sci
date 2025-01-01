/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Calling Sequence:
      sys = end(sys,k,n)
Parameters:
      sys - A LTI object or a matrix
      k(scalar) - Used for switch case
      n - always 2
Dependencies:
      size,switch
Description:
      The end function gives the end indexing for IDDATA objects. 
      Used by Octave for "dat(1:end)".
*/
function ret = end_function(sys, k, n)
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
            error("lti: end: invalid expression index k = %d", k);
    end
endfunction

