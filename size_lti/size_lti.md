# size
## Description:
LTI model size, i.e.  number of outputs and inputs.
## Calling Sequence:
`[n, varargout] = size_lti(sys, dim)`
 `NVEC = size (SYS)`
 `N = size (SYS, DIM)`
 `[P, M] = size (SYS)`
## Parameters:
- SYS - LTI system.
-  DIM - If given a second argument, ‘size’ will return the size of the corresponding dimension.
- NVEC - Row vector.  The first element is the number of outputs (rows) and the second element the number of inputs (columns).
- N -  Scalar value.  The size of the dimension DIM.
- P -  Number of outputs.
- M -  Number of inputs.
## Examples
## 1
```
sys = syslin('c', [2 4; 6 8], [1 0; 0 1]);
nvec = size_lti(sys)
```
##
```
 nvec = [1x2 double]

   2.   2.
```
## 2
```
sys = syslin('c', 1, [3 5], 1);
m = size_lti(sys, 5)
```
##
```
Invalid dimension.
```
## 3
```
sys = syslin('c', 8, [9 10], 1);
[p, m] = size_lti(sys)
```
##
```
 p = 1.
 m = 2.
```
## 4
```
sys = syslin('c', 5, [6 7], 1);
m = size_lti(sys, 2)
```
##
```
 m = 2.
```
## 5
```
sys = syslin('c', 2, [3 4], 1);
nvec = size_lti(sys)
```
##
```
1.   2.
```
