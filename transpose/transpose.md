# Transpose
## Description
- Return the transpose of A.
- This function and A.' are equivalent.
## Calling Sequence
B = transpose(A)
## Parameter
A - a state space model with parameters A,B,C,D.
Scilab's syslin does not take 5 inputs (i.e) A,B,C,D,E as input
## Dependencies
`__transpose__`
## Examples
## 1
```
A = [0 1; -2 -3];
B = [0;1];
C = [1 0];
D = [0];
sys = syslin('c',A,B,C,D);
sys1 = transpose(sys)
```
##
```
  [state-space]
  A (matrix) = [0,-2;1,-3]
  B (matrix) = [1;0]
  C (matrix) = [0,1]
  D (matrix) = 0
  X0 (initial state) = [0;0]
  dt (time domain) = "c"
```
## 2
```
