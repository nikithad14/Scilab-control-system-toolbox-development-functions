# inv
## Description :
- Inversion of State Space objects.
## Calling Sequence :
SYSI = inv (SYS)
## Parameters :
- SYS - System to be inverted. A state space model with A, B, C, D.
- SYSI - Inverted system of SYS.
## Dependencies :
- `__sys_inverse__`
##
- Scilab's syslin does not take 5 inputs (i.e) A,B,C,D,E as input.
- Scilab's does not have inname, outname, ingroup, outgroup features.
## Examples : 
## 1
```
A = [0 0; 0 0];
B = eye(2,2);
C = eye(2,2);
D = eye(2,2);
sys = syslin("c", A, B, C, D);
retsys = inv_ss(sys)
```
##
```
retsys = [2x2 state-space]
  A (matrix) = [-1,0;0,-1]
  B (matrix) = [1,0;0,1]
  C (matrix) = [-1,0;0,-1]
  D (matrix) = [1,0;0,1]
  X0 (initial state) = [0;0]
  dt (time domain) = "c"
```
## 2
```
A = [0 1; -2 -3];
B = [0; 1];
C = [1 0];
D = [0];
sys = syslin("c", A, B, C, D);
retsys = inv_ss(sys)
```
##
```
  A (matrix) = [0,1,0;-2,-3,1;1,0,0]
  B (matrix) = [0;0;-1]
  C (matrix) = [0,0,1]
  D (matrix) = 0
  X0 (initial state) = [0;0]
  dt (time domain) = "c"
```
## 3
```
A = [];
B = [];
C = [];
D = [2];   // scalar gain
sys = syslin("c", A, B, C, D);
retsys = inv_ss(sys)
```
##
```
  A (matrix) = []
  B (matrix) = []
  C (matrix) = []
  D (matrix) = 0.5
  X0 (initial state) = []
  dt (time domain) = "c"
```
## 4
```
sys = syslin('c',1,1);
inv(sys,sys)
```
##
```
Wrong number of input arguments.
```
## 5
```
A = [0 1; 0 0];
B = [0; 1];             
C = [1 0; 0 1];   
D = [0; 0];
sys = syslin('c', A, B, C, D);
inv_ss(sys);          
```
##
```
lti: inv: system must be square
```
