# end
## Description:
- End indexing for LTI objects.
- Used by Octave for "sys(1:end, end-1)".
## Calling Sequence:
`sys = end_lti(sys,k,n)`
## Parameters:
- `sys` - A real or complex matrix
- `k`   - A scalar. Used for switch case
- `n` - A scalar. The value must be always 2 

## Examples:
## 1
    sys = [1, 2; 3, 4; 5, 6];
    ret = end_lti(sys, 1, 2);
    sys(ret,2)
##
    6
## 2
    sys = [1, 2; 3, 4; 5, 6];
    ret = end_lti(sys, 2, 2);
    sys(2,ret)
##
     4
## 3
     sys = [1, 2; 3, 4; 5, 6];
     ret = end_lti(sys, 3, 2)
##
     lti: end: invalid expression index k = 3
## 4
     sys = [42];
     ret = end_lti(sys, 2, 1);
     sys(ret,1)
##
    42
## 5
    sys = [1+2*%i, 3-4*%i, 5+6*%i; -7*%i, 8, -9+%i; 2-3*%i, 4+5*%i, -6*%i; 10, -11*%i, 12+13*%i];
    ret = end_lti(sys,1,2);
    sys(ret,2)
    
##
       0. - 11.i
