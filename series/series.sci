/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description :
Series connection of LTI models.
     .....................................
  u  :  +--------+ y1    u2  +--------+  :  y
 ------>|  sys1  |---------->|  sys2  |------->
     :  +--------+           +--------+  :
     :................sys.................

 sys = series (sys1, sys2)
  
     .....................................
     :                   v2  +--------+  :
     :            ---------->|        |  :  y
     :  +--------+ y1    u2  |  sys2  |------->
  u  :  |        |---------->|        |  :
 ------>|  sys1  |       z1  +--------+  :
     :  |        |---------->            :
     :  +--------+                       :
     :................sys.................

 outputs1 = [1]
 inputs2 = [2]
 sys = series (sys1, sys2, outputs1, inputs2)
 
 Calling Sequence :
 sys = series (sys1, sys2)
 sys = series (sys1, sys2, outputs1, inputs2)
 
 Parameters :
 - `sys1,sys2` -  A LTI object. 
- `inputs2` - 1D index vector.Eg : [1]. Must be equal to the number of inputs in sys2.
- `outputs1` - 1D index vector.Eg : [1]. Must be equal to the number of outputs in sys1.
*/
function sys = series(sys1, sys2, out1, in2)
  if argn(2) == 2 then
    sys = sys2 * sys1;
  elseif argn(2) == 4 then
    [p1, m1] = size(sys1);
    [p2, m2] = size(sys2);
    if ~(isreal(out1)) then
      error("series: argument 3 (outputs1) invalid");
    end
    if ~(isreal(in2)) then
      error("series: argument 4 (inputs2) invalid");
    end
    l_out1 = length(out1);
    l_in2 = length(in2);
    if l_out1 > p1 then
      error("series: outputs1 has too many indices for sys1");
    end
    if l_in2 > m2 then
      error("series: inputs2 has too many indices for sys2");
    end
    if l_out1 ~= l_in2 then
      error("series: number of outputs1 and inputs2 indices must be equal");
    end
    if or(out1 > p1 | out1 < 1) then
      error("series: range of outputs1 indices exceeds dimensions of sys1");
    end
    if or(in2 > m2 | in2 < 1) then
      error("series: range of inputs2 indices exceeds dimensions of sys2");
    end
    ij_out = [ (1:l_out1)' , out1(:) ];
    ij_in  = [ in2(:) , (1:l_in2)' ];
    out_scl = full(sparse(ij_out, ones(l_out1, 1), [l_out1, p1]));
    in_scl  = full(sparse(ij_in,  ones(l_in2, 1),  [m2, l_in2]));
    scl = in_scl * out_scl;
    sys = sys2 * scl * sys1;
  else
    print_usage();
  end
endfunction












