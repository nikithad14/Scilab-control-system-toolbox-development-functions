/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*inv
Description:
Inversion of State Space objects.
Calling Sequence:
SYSI = inv(SYS)
Parameters:
SYS — System to be inverted. A state space model with A, B, C, D.
SYSI — Inverted system of SYS.
Dependencies:
`__sys_inverse__`
Scilab's syslin does not take 5 inputs (i.e) A,B,C,D,E as input.
Scilab's does not have inname, outname, ingroup, outgroup features.
*/

function retsys = inv_ss(sys)
    if argn(2) <> 1 then   
        error("lti: inv: this is an unary operator");
    end
    [p, m] = size(sys);
    if p <> m then
        error("lti: inv: system must be square");
    end
    retsys = __sys_inverse__(sys);
endfunction
function sys = __sys_inverse__(sys)
    a = sys.a;
    b = sys.b;
    c = sys.c;
    d = sys.d;
    if rcond(d) < %eps then   
        n = size(a, 1);   
        m = size(b, 2);       
        sys.a = [a, b; c, d];
        sys.b = [zeros(n, m); -eye(m, m)];
        sys.c = [zeros(m, n), eye(m, m)];
        sys.d = zeros(m, m);
    else   
        bid = b / d;   
        sys.a = a - bid * c;
        sys.b = bid;
        sys.c = -d \ c;   
        sys.d = pinv(d);

    end
endfunction


