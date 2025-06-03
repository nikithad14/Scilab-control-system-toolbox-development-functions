/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*Description:
Determine whether LTI system is stable.
The functions checks for the poles of the system and returns T if it is stable else returns F.
Calling Sequence:
`BOOL = isstable (SYS)`
`BOOL = isstable (SYS, TOL)`
Parameters :
 `SYS` - LTI system.
 `TOL` - Optional tolerance for stability. TOL must be a real-valued,non-negative scalar. Default value is 0.
 `BOOL` - True if the system is stable and false otherwise.
Dependencies:
pole, __is_stable__
*/
function x = pole(sys)
    [lhs, rhs] = argn(0);
    if rhs == 0 then
        error("Not enough input arguments");
    end
    select typeof(sys)
    case "rational" then
        //
    case "state-space" then
        sys = ss2tf(sys); 
    else
        error("Unsupported system type");
    end
    x = [];
    if ndims(sys) == 3 then
        for i = 1:size(sys, 1)
            for j = 1:size(sys, 2)
                for k = 1:size(sys, 3)
                    x = [x; roots(sys(i,j,k).den)];
                end
            end
        end
    elseif ndims(sys) == 2 then
        for i = 1:size(sys, 1)
            for j = 1:size(sys, 2)
                x = [x; roots(sys(i,j).den)];
            end
        end
    else
        x = roots(sys.den);
    end
endfunction

function bool = __is_stable__(pol, ct, tol)
    if tol < 0 then
        error("Tolerance must be a non-negative scalar.");
    end

    if ct then
        bool = and(real(pol) < -tol .* (1 + abs(pol)));
    else
        bool = and(abs(pol) < 1 - tol);
    end
endfunction

function bool = isstable(sys, tol)
    if argn(2) < 2 then
        tol = 0;
    end
    pol = pole(sys);  
    if(sys.dt == 'c') then
        ct = 1;
    else
        ct = 0;
    end  
    bool = __is_stable__(pol, ct, tol);
endfunction
