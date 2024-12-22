/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Calling Sequence
      sys = parallel(sys1,sys2)
Description:
      The parallel function connects two LTI models parallely.
      The number of arguments passed must be equal to 2.
      If the number of arguments passed is equal to 2,then the 2 systems are added.
      Else the usage is printed. 
*/
function sys = parallel(sys1, sys2)
    if argn(2) == 2 then
        sys = sys1 + sys2;
    else
        error();
    end
endfunction
