# isminimumphase
## Description
- Determine whether LTI system has asymptotically stable zero dynamics. 
- According to the definition of Byrnes/Isidori [1], the zeros of a minimum-phase system must be strictly inside the left complex half-plane (continuous-time case) or inside the unit circle (discrete-time case). 
- Note that the poles are not tested.
## Calling Sequence
- `bool = isminimumphase (sys)`
- `bool = isminimumphase (sys, tol)`
## Parameters 
- `sys` - LTI system.
- `tol` - Optional tolerance. tol must be a real-valued, non-negative scalar. Default value is 0.
- `bool` - True if the system is minimum-phase and false otherwise.
## Dependencies
zero, __is_stable__
## Examples
## 1 
```
s = poly(0, 's');
sys = syslin('c', (s + 2) / (s + 5));
isminimumphase(sys)
```
##
    T
## 2
```
s = poly(0, 's');
sys = syslin('c', s / (s + 1));
isminimumphase(sys)
```
## 
    F
## 3
```
s = poly(0, 's');
sys = syslin('c', (s - 1) / (s + 2));
isminimumphase(sys)
```
##
    F
## 4
```
z = poly(0, 'z');
sys = syslin('d', (z - 0.5) / (z - 0.8));
isminimumphase(sys)
```
##
    T
## 5
```
z = poly(0, 'z');
sys = syslin('d', (z - 1) / (z - 0.7));
isminimumphase(sys, 0.001)
```
##
    F
  

