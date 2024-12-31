# uplus
## Calling Sequence
      sys = uplus(sys)
## Parameters
      sys - A LTI object
## Description
      The uplus function gives the unary plus of the LTI object.
      Eg. B = uplus(A).This operation is similar to +A.
      The number of arguments passed must be equal to 1.
      The result is the unary plus of the input sys.
# Examples
## 1
      sys = [1,-2,3;4,-5,6];
      sys = uplus(sys);
##
      1   -2   3
      4   -5   6
## 2
      sys = [1,2;3,4;5,6];
      sys = uplus(sys);
##
      1    2
      3    4
      5    6
## 3
     sys = uplus()
##
     lti: uplus: this is an unary operator
## 4
     sys1 = [1,2,3];
     sys2 = [4,5,6];
     sys = uplus(sys1,sys2)
##
     lti: uplus: this is an unary operator
## 5
      sys = [1,2;3,4];
      sys = uplus(sys);
##
      1   2   
      3   4
     
     
