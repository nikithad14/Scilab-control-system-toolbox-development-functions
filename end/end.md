# end
## Calling Sequence:
      sys = end(sys,k,n)
## Parameters:
      sys - A LTI object or a matrix
      k(scalar) - Used for switch case
      n - always 2
## Dependencies:
      size,switch
## Description:
      The end function gives the end indexing for IDDATA objects. 
      Used by Octave for "dat(1:end)".
## Examples:
## 1
  sys = [1, 2; 3, 4; 5, 6];
  ret = end_function(sys, 1, 2);
##
  3
## 2
  sys = [1, 2; 3, 4; 5, 6];
  ret = end_function(sys, 2, 2);
##
  2
## 3
   sys = [1, 2; 3, 4; 5, 6];
   ret = end_function(sys, 2, 3);
##
   lti: end: require 2 indices in the expression
## 4
   sys = [1, 2; 3, 4; 5, 6];
   ret = end_function(sys, 3, 1);
##
  lti: end: invalid expression index k = 3
## 5
  sys = [1, 2; 3, 4; 5, 6];
  ret = end_function(sys, 3, 3);
##
 lti: end: require 2 indices in the expression
