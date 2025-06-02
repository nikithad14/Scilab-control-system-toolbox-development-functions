# db2mag
## Description
- The db2mag function converts the given value in db into magnitude.
- The number of arguments passed must be equal to 1.
- The input must be real and can be of any form i.e. single input, 1D array or a matrix.
## Calling Sequence
`mag = db2mag(db)`
## Parameters
`db` - A scalar, 1D array or a M*N matrix.Must be real.

# Examples
## 1
      db = 1;
      mag = db2mag(db)
##
      1.1220185
## 2
      db = [1 10 100];
      mag = db2mag(db)
##
      1.1220185   3.1622777   100000
## 3
      db = [1 2 3;4 5 6];
      mag = db2mag(db)
##
     1.1220185   1.2589254   1.4125375
     1.5848932   1.7782794   1.9952623   
## 4
      db = 2*%i;
      mag = db2mag(db)
##
     Error : Input must be a real numeric matrix.
## 5
       db = [1+2*%i 8*%i;1 2];
       mag = db2mag(db)
##
      Error : Input must be a real numeric matrix.

     
     
