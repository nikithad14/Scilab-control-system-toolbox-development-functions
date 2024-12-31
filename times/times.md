# times
## Calling Sequence
      sys = times(sys1,sys2)
## Parameters
      sys1 - LTI system or Matrix
      sys2 - LTI system or Matrix
      Calling Sequence:
      sys = times(sys1,sys2)
## Dependencies:
      size,repmat
## Description
      The times function gives the element-by-element multiplication product of inputs.
      It is similar to "sys1 .* sys2"
      The number of arguments passed must be equal to 2.
# Examples
## 1
     sys1 = [-1 5 0];
     sys2 = [1 0 -7];
     sys = times(sys1,sys2);
     disp(sys);
##
     -1   0   0
## 2
      sys1 = [1,2;3,4];
      sys2 = [1,2;3,4];
      sys = times(sys1,sys2);
##
      1    4
      9    16
## 3
     sys = times()
##
     lti: times: this is a binary operator
## 4
    sys1 = [1 2; 3 4];
    sys2 = [1];
    sys = times(sys1,sys2);
##
     1      2
     3      4
## 5
    sys1 = [1 2 3 4];
    sys2 = [0];
    sys = times(sys1,sys2);
##
     1   2   3   4


     
