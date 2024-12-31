# times
## Calling Sequence
      sys = times(sys1,sys2)
## Parameters
      sys1 - LTI system
      sys2 - LTI system
## Description
      The times function gives the Hadamard/Schur product of transfer function matrices. 
      Also known as element-wise multiplication. 
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


     
