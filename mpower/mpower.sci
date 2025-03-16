/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Dependencies:
  ss2ss
  ss2tf
Calling Sequence:
  retsys = mpower(sys, e)
Parameters:
  sys - A square object
  e   - An integer
Description:
 The mpower function computes the power of a square LTI system sys raised to the integer exponent e. 
 If e = 0, it returns the identity system. 
 If e > 0, it multiplies sys by itself e times.
 If e < 0, it computes the inverse of sys and raises it to |e|. 
 The system must be square, and e must be a real integer.
 */
function retsys = mpower(sys, e)
    if argn(2) ~= 2 then
        error("lti: mpower: this is a binary operator");
    end
    if ~isreal(e) | e ~= round(e) then
        error("lti: mpower: exponent must be an integer");
    end
    [p, m] = size(sys);
    if p ~= m then
        error("lti: mpower: system must be square");
    end
    mimo_tf = (p * m > 1) & typeof(sys) == "tf";
    if mimo_tf then
        sys = ss2ss(sys); 
    end
    ex = round(abs(e)); 
    select sign(e)
        case -1 then // lti^-ex
            sys = inv(sys);
            retsys = sys;
        case 0 then 
            retsys = eye(p, p); 
            return;
        case 1 then 
            retsys = sys;
    end
    for k = 2:ex
        retsys = retsys * sys;
    end
    if mimo_tf then
        retsys = ss2tf(retsys);
    end
endfunction

