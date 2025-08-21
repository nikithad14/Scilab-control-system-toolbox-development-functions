# merge
## Description:
- Concatenate experiments of iddata datasets. 
- The experiments are concatenated in the following way: ‘dat.y = [dat1.y; dat2.y; ...]’ ‘dat.u = [dat1.u; dat2.u; ...]’ The number of outputs and inputs must be equal for all datasets.
## Calling Sequence:
      DAT = merge (DAT1, DAT2, ...)
## Parameters:
      DAT1, DAT2, ... - iddata datasets.

## Dependencies:
- cat_iddata - https://github.com/akash-sankar/CSToolboxFunctions/blob/main/%40iddata%20cat/cat.sci
- iddata - http://github.com/akash-sankar/CSToolboxFunctions/blob/main/iddata/iddata.sci
- Use iddata function to provide inputs
- size_iddata - https://github.com/akash-sankar/CSToolboxFunctions/blob/main/%40iddata%20size/size.sci
- Use struct(dat) to view the output in Octave
## Examples
## 1
```
dat = merge_iddata(iddata(1, 1), iddata(2, 2))
```
##
```
dat = [struct] with fields:

  y: (2-elements list)
      (1) = 1
      (2) = 2
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (2-elements list)
      (1) = 1
      (2) = 2
  inname: (1-element list)
      (1) = ""
  inunit: (1-element list)
      (1) = ""
  tsam: (2-elements list)
      (1) = -1
      (2) = -1
  timeunit = ""
  timedomain = %t
  w: (empty list)
  expname: (2-elements list)
      (1) = ""
      (2) = ""
  name = ""
  notes: (empty list)
  userdata = []
  type = "iddata"
```
## 2
```
merge_iddata(iddata([1;2], [1;2]), iddata(3, 3))
```
##
```
ans = [struct] with fields:

  y: (2-elements list)
      (1) = [1;2]
      (2) = 3
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (2-elements list)
      (1) = [1;2]
      (2) = 3
  inname: (1-element list)
      (1) = ""
  inunit: (1-element list)
      (1) = ""
  tsam: (2-elements list)
      (1) = -1
      (2) = -1
  timeunit = ""
  timedomain = %t
  w: (empty list)
  expname: (2-elements list)
      (1) = ""
      (2) = ""
  name = ""
  notes: (empty list)
  userdata = []
  type = "iddata"
```
## 3
```
merge_iddata(iddata(1,1), iddata(2,2), iddata(3,3), iddata(4,4))
```
##
```
dat = [struct] with fields:

  y: (4-elements list)
      (1) = 1
      (2) = 2
      (3) = 3
      (4) = 4
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (4-elements list)
      (1) = 1
      (2) = 2
      (3) = 3
      (4) = 4
  inname: (1-element list)
      (1) = ""
  inunit: (1-element list)
      (1) = ""
  tsam: (4-elements list)
      (1) = -1
      (2) = -1
      (3) = -1
      (4) = -1
  timeunit = ""
  timedomain = %t
  w: (empty list)
  expname: (4-elements list)
      (1) = ""
      (2) = ""
      (3) = ""
      (4) = ""
  name = ""
  notes: (empty list)
  userdata = []
  type = "iddata"
```
## 4
```
merge_iddata(iddata([], []), iddata([1;2], [3;4]))
```
##
```
Invalid index.
```

## 5
```
d1 = iddata([1 2; 3 4], [5 6; 7 8]);
d2 = iddata([9; 10], [11; 12]);
merge_iddata(d1,d2)
```
##
```
iddata: cat: number of outputs do not match
```
