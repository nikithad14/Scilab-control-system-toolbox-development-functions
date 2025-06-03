/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Description:
Compute poles of LTI system.
For system/state matrices, ‘pole’ relies on Scilab's ‘spec’. 
For SISO transfer functions, ‘pole’ uses Scilab's ‘roots’.
Calling Sequence:
P = pole (SYS)`
Parameters:
`SYS` - LTI model.
`P` -  Poles of SYS.
Dependencies:
__pole__, spec, roots
*/
function pol = __pole__ (sys)
    pol = roots (sys.den(1));
endfunction

function pol = pole(sys)
    if nargin() == 1 then  
        if typeof(sys) ~= "rational" && issquare(sys)  then  
            pol = spec(sys);
        elseif typeof(sys) == "rational" |typeof(sys) == "state-space" then 
            pol = __pole__(sys); 
        else
            error("pole: argument must be an LTI system or a square matrix");
        end
    else
        error("Usage: pole(sys)");  
    end
endfunction






