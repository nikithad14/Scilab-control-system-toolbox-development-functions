# mpower
## Description
 - The mpower function returns the matrix power operation of A raised to the B (e) power. 
 - If e = 0, it returns the identity system. 
-  If e > 0, it multiplies sys by itself e times.
-  If e < 0, it computes the inverse of sys and raises it to |e|. 
-  The system must be square, and e must be a real integer.
## Calling Sequence
  `retsys = mpower(sys, e)`
## Parameters
- `sys` - A square matrix, SISO or MIMO systems. But the number of rows and columns must be same.
- `e`   - An integer, can be positive, negative or zero.

# Examples
## 1
     s = poly(0, 's');
     sys = 1 / (s + 1);
    retsys = mpower(sys, 2)
##
        1       
     ----------  
     1 +2s +s^2  
## 2
     s = poly(0, 's');
     sys = 1/(s+3);
     retsys = mpower(sys, -1)
##
      3 +s  
      ----  
       1    
## 3
    s = poly(0, 's');
    sys = [1/(s+1); 1/(s+2)];
    retsys = mpower(sys, 2)
##
    lti: mpower: system must be square
## 4
    s = poly(0, 's');
    sys = 1 / (s + 1);
    retsys = mpower(sys, 1.5)
##
     lti: mpower: exponent must be an integer
## 5
    s = poly(0, 's');
    sys = 1 / (s + 1);
    retsys = mpower(sys, 0)
##
    1
## 6
```
sys = [1+%i, 2; 0, 1-2*%i];
retsys = mpower(sys, 3)
```
##
```
  -2. + 2.i   0.  - 6.i
   0. + 0.i  -11. + 2.i
```

