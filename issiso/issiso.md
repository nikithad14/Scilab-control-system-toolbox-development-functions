# issiso
## Dependencies :
     and, bool
## Calling Sequence :
     bool = issiso(sys)
## Description :
    The issiso function checks whether the given system sys is a Single-Input Single-Output (SISO) system.
    A SISO system has exactly one input and one output, meaning it has a 1×1 transfer function matrix.
    If sys has dimensions 1×1, the function returns true (T). 
    Otherwise, it returns false (F). 
    If the number of input arguments is incorrect, the function throws an error.
## Examples :
## 1
sys = [1/(s+1), 2/(s+2); 3/(s+3), 4/(s+4)];  
bool = issiso(sys);  
disp(bool);
##
F
## 2
sys = [2/(s + 1)];  
bool = issiso(sys);  
disp(bool);
##
T
## 3
bool = issiso();  
disp(bool);
##
Usage: issiso(sys)
## 4
sys = [1/(s+1), 2/(s+2)];  // 1×2 system
bool = issiso(sys);  
disp(bool);
##
F
## 5
sys = [5];  // A single scalar value (1×1)
bool = issiso(sys);  
disp(bool);
##
T
