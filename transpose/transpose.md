# Transpose
## Description
- Return the transpose of A.
- This function and A.' are equivalent.
- This code is written only for transpose of state space models.
## Calling Sequence
B = transpose(A)
## Parameter
A - a state space model with parameters A,B,C,D.
Scilab's syslin does not take 5 inputs (i.e) A,B,C,D,E as input.
Scilab's does not have inname, outname, ingroup, outgroup features.
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
A = [0 0; 0 0];
B = [0; 0];
C = [0 0];
D = [0];
sys = syslin('c', A, B, C, D);
sys1 = transpose(sys)
```
```

  A (matrix) = [0,0;0,0]
  B (matrix) = [0;0]
  C (matrix) = [0,0]
  D (matrix) = 0
  X0 (initial state) = [0;0]
  dt (time domain) = "c"
```
## 3
```
A = [1 2 3; 4 5 6]; 
B = [1; 0];
C = [0 0 1];
D = [0];
sys = syslin('c', A, B, C, D);
sys1 = transpose(sys)
```
```
syslin: Wrong size for input argument #2: Square matrix expected.
```
## 4
```
sys = transpose()
```
```
lti: transpose: this is an unary operator
```
## 5
```
A = [2];
B = [1];
C = [3];
D = [0];
sys = syslin('c', A, B, C, D);
sys1 = transpose(sys)
```
```
  A (matrix) = 2
  B (matrix) = 3
  C (matrix) = 1
  D (matrix) = 0
  X0 (initial state) = 0
  dt (time domain) = "c"
```


