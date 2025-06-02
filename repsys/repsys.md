# repsys
## Description:
- The repsys function forms a block transfer matrix of sys with m copies vertically and n copies horizontally. 
- If n is not specified, it is set to m. 
- repsys (sys, 2, 3) is equivalent to [sys, sys, sys; sys, sys, sys].
## Calling Sequence :
- sys = repsys(sys,m,n)
- sys = repsys(sys,m)
- sys = repsys(sys,[m,n])
## Parameters :
- `sys` : A LTI system or a matrix
- `m` (scalar): Number of rows to be repeated
- `n` (scalar) : Number of columns to be repeated
## Dependencies : 
repmat

# Examples:
## 1
      sys = [1, 2; 3, 4];          
      sys1 = repsys(sys,2,3)
##
      1   2   1   2   1   2
      3   4   3   4   3   4
      1   2   1   2   1   2
      3   4   3   4   3   4
## 2
      sys = [1, 2; 3, 4];          
      sys1 = repsys(sys,2)
##
      1   2   1   2   
      3   4   3   4   
      1   2   1   2   
      3   4   3   4   
## 3
      sys = [1, 2; 3, 4];          
      sys1 = repsys(sys,[2,3])
##
      1   2   1   2   1   2
      3   4   3   4   3   4
      1   2   1   2   1   2
      3   4   3   4   3   4
## 4
      sys = [7];          
      sys1 = repsys(sys,3,2)
##
         7    7
         7    7
         7    7
## 5
      sys = [];          
      sys1 = repsys(sys,2,2)  
##
      []

