# parallel
## Calling Sequence
      sys = parallel(sys1,sys2)
## Description
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
     
# Examples
## 1
      s = poly(0, 's');
      sys1 = syslin('c', 1 / (s + 1));
      sys2 = syslin('c', s / (s + 2));
      sys = parallel(sys1, sys2);
      disp(sys);
##
    2 +2s +s^2  
    ----------  
    2 +3s +s^2 
## 2
      sys1 = [1, 2; 3, 4];
      sys2 = [5, 6; 7, 8];
      sys = parallel(sys1, sys2);
      disp(sys);
##
    6     8 
    10    12
## 3
      sys1 = 5;
      sys2 = 10;
      sys = parallel(sys1, sys2);
      disp(sys);
## 
    15

