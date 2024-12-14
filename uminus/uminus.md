# uminus
## Calling Sequence
      sys = uminus(sys)
## Parameters
      p (scalar): Number of rows in sys
      m (scaler) : Number of columns in sys
## Description
      The uminus function gives the unary minus of the LTI object.
      The number of arguments passed must be equal to 1.
      The function first calculates the size of the input argument and creates an identity matrix of size pxp.
      The identity matrix is negated and then multiplied with the input.
      The result is the unary minus of the input sys.
## Dependencies 
      eye,size
# Examples
## 1
      sys = [1,2,3;4,5,6];
      sys = uminus(sys);
##
      -1   -2   -3
      -4   -5   -6
## 2
      sys = [1,2;3,4;5,6];
      sys = uminus(sys);
##
      -1    -2
      -3    -4
      -5    -6
## 3
     sys = uminus()
##
     lti: uminus: this is an unary operator
## 4
     sys1 = [1,2,3];
     sys2 = [4,5,6];
     sys = uminus(sys1,sys2)
##
     lti: uminus: this is an unary operator

