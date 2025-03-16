# mpower
## Dependencies
  ss2ss
  ss2tf
## Calling Sequence
  retsys = mpower(sys, e)
## Parameters
  sys - A square object
  e   - An integer
## Description
 The mpower function computes the power of a square LTI system sys raised to the integer exponent e. 
 If e = 0, it returns the identity system. 
 If e > 0, it multiplies sys by itself e times.
 If e < 0, it computes the inverse of sys and raises it to |e|. 
 The system must be square, and e must be a real integer.
# Examples
## 1
  s = poly(0, 's');
  sys = 1 / (s + 1);
  retsys = mpower(sys, 2);
##
       1       
   ----------  
   1 +2s +s^2  
## 2
   s = poly(0, 's');
   sys = 1/(s+3);
   retsys = mpower(sys, -1);
##
      3 +s  
      ----  
       1    
## 3
    s = poly(0, 's');
    sys = [1/(s+1); 1/(s+2)];
    retsys = mpower(sys, 2); 
##
    lti: mpower: system must be square
## 4
    s = poly(0, 's');
    sys = 1 / (s + 1);
    retsys = mpower(sys, 1.5); 
##
   lti: mpower: exponent must be an integer
## 5
  s = poly(0, 's');
  sys = 1 / (s + 1);
  retsys = mpower(sys, 0)
##
  1
