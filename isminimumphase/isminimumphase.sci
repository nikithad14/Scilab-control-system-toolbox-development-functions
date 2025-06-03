/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Description :
Determine whether LTI system has asymptotically stable zero dynamics. 
According to the definition of Byrnes/Isidori [1], the zeros of a minimum-phase system must be strictly inside the left complex half-plane (continuous-time case) or inside the unit circle (discrete-time case). 
Note that the poles are not tested.
Calling Sequence :
`bool = isminimumphase (sys)`
`bool = isminimumphase (sys, tol)`
Parameters :
`sys` - LTI system.
`tol` - Optional tolerance. tol must be a real-valued, non-negative scalar. Default value is 0.
`bool` - True if the system is minimum-phase and false otherwise.
Dependencies:
zero, __is_stable__
*/
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

function x = zero(sys)
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
                    x = [x; roots(sys(i,j,k).num)];
                end
            end
        end
    elseif ndims(sys) == 2 then
        for i = 1:size(sys, 1)
            for j = 1:size(sys, 2)
                x = [x; roots(sys(i,j).num)];
            end
        end
    else
        x = roots(sys.num);
    end
endfunction


function bool = isminimumphase(sys, tol)
    [lhs, rhs] = argn(0);
    if rhs > 2 then
        error("Usage: isminimumphase(sys , tol)");
    end
    if rhs < 2 then
        tol = 0;
    end
    z = zero(sys); 
    if(sys.dt == 'c') then
        ct = 1;
    else
        ct = 0;
    end                   
    bool = __is_stable__(z, ct, tol);
endfunction






