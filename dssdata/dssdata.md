# dssdata
## Description:
- Access descriptor state-space (DSS) model data from a given LTI system.
- If sys is not already a DSS model, it is automatically converted.
- If called with no second argument and e is empty, returns e = eye(size(a)).
- Used to extract or inspect internal state-space representations of LTI systems.
## Calling Sequence:
- `[a, b, c, d, e, tsam, scaled] = dssdata(sys)`
- `[a, b, c, d, e, tsam, scaled] = dssdata(sys,flg)`
## Parameters:
- `sys`      - Any type of LTI system (state-space, transfer function, ZPK, etc.)
- `flg`      - Optional second input.Default value is 0.
- `a`        - State matrix (n-by-n)
- `b`        - Input matrix (n-by-m)
- `c`        - Output (measurement) matrix (p-by-n)
- `d`        - Feedthrough matrix (p-by-m)
- `e`        - Descriptor matrix (n-by-n), empty or identity
- `tsam`     - Sampling time 
## Dependencies:
`__sys_data__`

## Examples
## 1
    A = [0 1; -2 -3];  
    B = [0; 1];        
    C = [1 0];         
    D = [0];          
    sys = syslin('c', A, B, C, D); 
    [a, b, c, d, e, tsam, scaled] = dssdata(sys, 0)
##
    a = [2x2 double]
       0.   1.
      -2.  -3.
    
     b = [2x1 double]
       0.
       1.
    
     c = [1x2 double]
       1.   0.
    
     d =     
       0.
    
     e = [1x2 double]    
       1.   0.
    
     tsam =    
      "c"
    
     scaled =    
        []

## 2
    A = [0 1 0; 0 0 1; -6 -11 -6];
    B = [0 0; 0 0; 1 1];
    C = [1 0 0; 0 1 0];
    D = zeros(2,2);
    sys = syslin('c', A, B, C, D);
    [a, b, c, d, e, tsam, scaled] = dssdata(sys, 0)
##
     a = [3x3 double]
       0.   1.    0.
       0.   0.    1.
      -6.  -11.  -6.
    
     b = [3x2 double]    
       0.   0.
       0.   0.
       1.   1.
    
     c = [2x3 double]    
       1.   0.   0.
       0.   1.   0.
    
     d = [2x2 double]    
       0.   0.
       0.   0.
    
     e = [1x2 double]    
       1.   0.
    
     tsam =   
      "c"
    
     scaled = 
        []

## 3
    A = [0.5 0; 0 0.9];
    B = [1; 0];
    C = [0 1];
    D = [0];
    sys = syslin(0.1, A, B, C, D); 
    [a, b, c, d, e, tsam, scaled] = dssdata(sys)

##
    a = [2x2 double]
       0.5   0. 
       0.    0.9
    
     b = [2x1 double]
       1.
       0.
    
     c = [1x2 double]
       0.   1.
    
     d = 
       0.
    
     e = [1x2 double]
       1.   0.
    
     tsam = 
       0.1
    
     scaled = 
        []

  ## 4
    A = [0 1; -2 -3];  
    B = [0; 1];        
    C = [1 0];         
    D = [0];          
    sys = syslin(0.1, A, B, C, D); 
    [a, b, c, d, e, tsam, scaled] = dssdata(sys, [])
##
    a = [2x2 double]
       0.   1.
      -2.  -3.
    
     b = [2x1 double]
       0.
       1.
    
     c = [1x2 double]
       1.   0.
    
     d = 
       0.
    
     e = 
        []
    
     tsam = 
      0.1
    
     scaled = 
        []
## 5
```
A = [0 1; -2 3+4*%i];
B = [0; 1+2*%i];
C = [1 -1*%i];
D = [0];
sys = syslin(0.1, A, B, C, D);
[a, b, c, d, e, tsam, scaled] = dssdata(sys, [])
```
##
```
a = [2x2 double]

   0. + 0.i   1. + 0.i
  -2. + 0.i   3. + 4.i

 b = [2x1 double]

   0. + 0.i
   1. + 2.i

 c = [1x2 double]

   1. + 0.i   0. - i  

 d = 

   0.

 e = 

    []

 tsam = 

   0.1

 scaled = 

    []
```
    
    
        
        
        
