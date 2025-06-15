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
__pole__, issiso https://github.com/nikithad14/Scilab-control-system-toolbox-development-functions/blob/main/issiso/issiso.sci
*/
function pol = __pole__ (sys)
    if issiso(sys) then
    pol = roots (sys.den(1));
    else
    warning("tf: pole: converting to minimal state-space for pole computation of mimo tf\n");
    sys = tf2ss(sys); 
    pol = pole(sys.A); 
    end
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






