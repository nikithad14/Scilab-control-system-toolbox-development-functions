# series
## Description
Series connection of two LTI models.
     	
     
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
## Calling Sequence
- `sys = series (sys1, sys2)`
- `sys = series (sys1, sys2, outputs1, inputs2)`
## Parameters
- `sys1,sys2` -  A LTI object. 
- `inputs2` - 1D index vector.Eg : [1]. Must be equal to the number of inputs in sys2.
- `outputs1` - 1D index vector.Eg : [1]. Must be equal to the number of outputs in sys1.

# Examples
## 1
```
s = poly(0, 's');
sys1 = syslin('c', 2 / (s^2 + 3*s + 2));
sys2 = syslin('c', 1 / (s + 1));
outputs1 = [1];
inputs2 = [1];
sys = series(sys1, sys2, outputs1, inputs2)
```
##
```
          2          
   ----------------  
   2 +5s +4s^2 +s^3
```
## 2
```
s = poly(0, 's');
sys1 = syslin('c', 3 / (s^3 + 4*s^2 + 2*s + 1));
sys2 = syslin('c', 1 / (s^2 + 3*s + 1));
outputs1 = [1];
inputs2 = [1];
sys = series(sys1, sys2, outputs1, inputs2)
```
##
```
                 3                 
   ------------------------------  
   1 +5s +11s^2 +15s^3 +7s^4 +s^5  
```
## 3
```
s = poly(0, 's');
sys1 = syslin('c', 1 / (s + 1));
sys2 = syslin('c', [1 / (s + 2), 1 / (s + 3)]);
outputs1 = [1];
inputs2 = [3];
sys = series(sys1, sys2, outputs1, inputs2)
```
##
```
series: range of inputs2 indices exceeds dimensions of sys2
```
## 4
```
s = poly(0, 's');
sys1 = syslin('c', [1 / (s + 1); 2 / (s + 2)]);
sys2 = syslin('c', [1 / (s + 3), 2 / (s + 4)]);
outputs1 = [1, 2];
inputs2 = [1];
sys = series(sys1, sys2, outputs1, inputs2)
```
##
```
series: number of outputs1 and inputs2 indices must be equal
```
## 5
```
s = poly(0, 's');
sys1 = syslin('c', 1 / (s + 1));
sys2 = syslin('c', 1 / (s + 2));
sys = series(sys1, sys2)
```
##
```
       1       
   ----------  
   2 +3s +s^2
```
