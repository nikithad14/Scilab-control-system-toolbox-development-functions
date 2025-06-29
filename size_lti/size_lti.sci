/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Description:
    LTI model size, i.e.  number of outputs and inputs.
Calling Sequence:
    NVEC = size(SYS)
    N = size(SYS, DIM)
    [P, M] = size(SYS)
Parameters:
    SYS - LTI system.
    DIM - If given a second argument, ‘size’ will return the size of the corresponding dimension.
    NVEC - Row vector.  The first element is the number of outputs (rows) and the second element the number of inputs (columns).
    N -  Scalar value.  The size of the dimension DIM.
    P -  Number of outputs.
    M -  Number of inputs.
*/
function [n, varargout] = size_lti(sys, dim)
  if argn(2) < 2 then
    dim = 0;
  end
   if argn(2) > 2 then
    error("Too many input arguments.");
  end
  if typeof(sys) <> "state-space" & typeof(sys) <> "rational" then
    error("Input must be an LTI system.");
  end
  [p, m] = size(sys);

  select dim
    case 0 then
      select argn(1)
        case 0 then
          stry = ""; stru = "";
          if p <> 1 then 
              stry = "s";
          end
          if m <> 1 then
               stru = "s"; 
          end
          disp(msprintf("LTI model with %d output%s and %d input%s.", p, stry, m, stru));
        case 1 then
          n = [p, m];
        case 2 then
          n = p;
          varargout(1) = m;
        else
          error("Too many output arguments.");
      end
    case 1 then
      n = p;
    case 2 then
      n = m;
    else
      error("Invalid dimension.dim must be 0,1 or 2");
  end

endfunction

