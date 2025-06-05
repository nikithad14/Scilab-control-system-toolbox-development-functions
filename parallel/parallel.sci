/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
      The parallel function connects two LTI models parallely.
      The number of arguments passed must be equal to 2.
      If the number of arguments passed is equal to 2,then the 2 systems are added.
      Else the usage is printed. 
     ..........................
     :      +--------+        :
     :  +-->|  sys1  |---+    :
  u  :  |   +--------+   | +  :  y
 -------+                O--------->
     :  |   +--------+   | +  :
     :  +-->|  sys2  |---+    :
     :      +--------+        :
     :.........sys............:
Calling Sequence
      sys = parallel(sys1,sys2)
Parameters :
sys1,sys2 - A LTI object, matrices, scalars, state space models
sys - Parallel combination of sys1 and sys2
*/
function sys = parallel(sys1, sys2)
    if argn(2) == 2 then
        sys = sys1 + sys2;
    else
        error("lti:parallel. This is a binary operator");
    end
endfunction

