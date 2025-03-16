/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Dependencies :
     and, bool
Calling Sequence :
     bool = issiso(sys)
Description :
    The issiso function checks whether the given system sys is a Single-Input Single-Output (SISO) system.
    A SISO system has exactly one input and one output, meaning it has a 1×1 transfer function matrix.
    If sys has dimensions 1×1, the function returns true (T). 
    Otherwise, it returns false (F). 
    If the number of input arguments is incorrect, the function throws an error.*/
function bool = issiso(sys)
    if nargin() ~= 1 then
        error("Usage: issiso(sys)");
    end
    bool = and(size(sys) == 1);
endfunction
sys = [5];  // A single scalar value (1×1)
bool = issiso(sys);  
disp(bool);


  



