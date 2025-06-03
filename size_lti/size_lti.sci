/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Description:
      Returns the size of an LTI system object, similar to how size() behaves for standard data types.
      - When called with no dim and no outputs, it prints a message.
      - When called with one or two outputs, it returns sizes.
      - Handles errors for invalid inputs or usage.
Calling Sequence:
      [n, varargout] = size_lti(sys, dim)
Parameters:
      sys         - LTI system structure with fields `inname` and `outname`
      dim (opt)   - Dimension indicator (0, 1, or 2). Default is 0.
                    0 → return or display both input/output sizes
                    1 → return number of outputs
                    2 → return number of inputs
      n           - Output size 
      varargout   - Second output, used when dim = 0 and two outputs are expected
Dependencies:
      size

*/

function [n, varargout] = size_lti(sys, dim)
    if argn(2) < 2 then
        dim = 0;
    end
    if argn(2) > 2 then
        error("Too many input arguments.");
    end
    p = size(sys.outname, 2);  
    m = size(sys.inname, 2);   
    select dim
        case 0 then
            select argn(1)
                case 0 then
                    if p == 1 then
                        stry = "";
                    else
                        stry = "s";
                    end
                    if m == 1 then
                        stru = "";
                    else
                        stru = "s";
                    end
                    mprintf("LTI model with %d output%s and %d input%s.\n", p, stry, m, stru);
                case 1 then
                    n = [p, m];
                case 2 then
                    n = p;
                    varargout(1) = list(m);
                else
                    error("Invalid number of output arguments.");
            end
        case 1 then
            n = p;
        case 2 then
            n = m;
        else
            error("Invalid value for dim. Must be 0, 1, or 2.");
    end
endfunction

