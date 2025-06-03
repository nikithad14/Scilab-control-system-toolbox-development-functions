# isstable
## Description
- Determine whether LTI system is stable.
- The functions checks for the poles of the system and returns T if it is stable else returns F.
## Calling Sequence 
- `BOOL = isstable (SYS)`
- `BOOL = isstable (SYS, TOL)`
## Parameters
- `SYS` - LTI system.
- `TOL` - Optional tolerance for stability. TOL must be a real-valued,non-negative scalar. Default value is 0.
- `BOOL` - True if the system is stable and false otherwise.
## Dependencies
pole, __is_stable__
# Examples
## 1
```
s = poly(0, 's');
sys = syslin('c', 1 / (s + 2)); 
isstable(sys)
```
## 
    T
## 2
```
s = poly(0, 's');
sys = syslin('c', 1 / s);   
isstable(sys)
```
##
    F
## 3
```
s = poly(0, 's');
sys = syslin('c', 1 / (s^2 + 2*s + 5));  
isstable(sys)
```
##
    T
## 4
```
s = poly(0, 's');
sys = syslin('c', 1 / (s - 1));   
isstable(sys)
```
##
    F
## 5
```
A = [-2 0; 0 -3]; B = [1; 0]; C = [0 1]; D = 0;
sys = syslin('c', A, B, C, D);  
isstable(sys)
```
## 
    T
## 6
```
s = poly(0, 's');
sys = syslin('c', 1/(s + 1e-6));    
disp(isstable(sys, 1e-5))
```
## 
    F
        

