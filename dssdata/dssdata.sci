/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Calling Sequence:
      [a, b, c, d, e, tsam, scaled] = dssdata(sys)
      [a, b, c, d, e, tsam, scaled] = dssdata(sys,flg)
Parameters:
      sys      - Any type of LTI system (state-space, transfer function, ZPK, etc.)
      flg      - Optional second input.Default value is 0.
      a        - State matrix (n-by-n)
      b        - Input matrix (n-by-m)
      c        - Output (measurement) matrix (p-by-n)
      d        - Feedthrough matrix (p-by-m)
      e        - Descriptor matrix (n-by-n), empty or identity
      tsam     - Sampling time 
Dependencies:
      syslin, typeof, isempty, eye, error, disp
Description:
      Access descriptor state-space (DSS) model data from a given LTI system.
      - If sys is not already a DSS model, it is automatically converted.
      - If called with no second argument and e is empty, returns e = eye(size(a)).
      - Used to extract or inspect internal state-space representations of LTI systems.
*/

function [a, b, c, d, e, stname, scaled] = __sys_data__(sys)
  a = sys.a;
  b = sys.b;
  c = sys.c;
  d = sys.d;
  e = []; 
  stname = []; 
  scaled = [];
endfunction

function [a, b, c, d, e, tsam, scaled] = dssdata(sys, flg)
  if argn(2) < 2 then
     flg = 0;
  end
  if argn(2) > 2 then
      error("Need at most two arguments");
  end
  if typeof(sys) <> "state-space" then
    sys = syslin("c", sys);
  end
  [a, b, c, d, e, tsam, scaled] = __sys_data__(sys);
  if isempty(e) & ~isempty(flg) then
    e = eye(size(a)); // Return eye for e
  end
  tsam = sys.dt;
endfunction






