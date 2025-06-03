# pole
## Description
- Compute poles of LTI system.
- For system/state matrices, ‘pole’ relies on Scilab's ‘spec’. 
- For SISO transfer functions, ‘pole’ uses Scilab's ‘roots’.
## Calling Sequence
`P = pole (SYS)`
## Parameters
- `SYS` - LTI model.
- `P` -  Poles of SYS.
## Dependencies
___pole___, spec, roots
## Examples
## 1
```
A = [0 1; -2 -3];
x = pole(A)
```
##
```
-1. + 0.i
-2. + 0.i
```
## 2
```
s = poly(0, 's');
sys = syslin('c', 1 / (s^2 + 2*s + 1));
x = pole(sys)
```
##
```
  -1. + 0.i
  -1. + 0.i
```
## 3
```
A = zeros(3,3);
x = pole(A)
```
##
     0.
     0.
     0.
## 4
```
z = poly(0, 'z');
sys = syslin('d', 1 / (z^2 + 0.5*z + 1));
x = pole(sys)
```
##
```
  -0.25 + 0.9682458i
  -0.25 - 0.9682458i
```
## 5
```
sys = pole()
```
##
```
Usage: pole(sys)
```
