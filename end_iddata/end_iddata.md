# end
## Dependencies:
      size,switch
## Calling Sequence:
      sys = end_iddata(dat,k,n)
## Parameters:
      dat - A data object (Eg. a matrix.)
      k(scalar) - Index position.
      n - Indices 
## Description:
      The end function gives the end indexing for IDDATA objects. 
      Used by Octave for "dat(1:end)".
# Examples
## 1
        dat = rand(2, 2, 2, 2, 2);
        ret = end_iddata(dat, 1, 5); 
## 
        iddata: end: require at most 4 indices in the expression
        
## 2
        dat = rand(4, 3);
        ret = end_iddata(dat, 5, 2);
##
        iddata: end: invalid expression index k = 5

## 3
        dat = 42;
        ret = end_iddata(dat, 1, 1);
##
        1

## 4
        dat = rand(5, 3);              
        ret = end_iddata(dat, 1, 2);
##
        5

## 5
        dat = rand(4, 7);           
        ret = end_iddata(dat, 2, 2);
##
        7

