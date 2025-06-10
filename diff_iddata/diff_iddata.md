# diff
## Description 
- Return K-th difference of outputs and inputs of dataset DAT.
- If K is not specified, default value 1 is taken.
## Calling Sequence
- DAT = diff (DAT)
- DAT = diff (DAT, K)
## Parameters
- DAT - A iddata data set
- K - An integer
## Dependencies
Use iddata function to give inputs in Scilab
https://github.com/akash-sankar/CSToolboxFunctions/blob/main/iddata/iddata.sci
## Examples
## 1
```
dat = iddata((1:6)',(1:6)');
diff_iddata(dat,0)
```
##
```
 ans = [struct] with fields:

  y: (1-element list)
      (1): (1-element list)
          (1) = [1;2;3;4;5;6]
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (1-element list)
      (1): (1-element list)
          (1) = [1;2;3;4;5;6]
  inname: (1-element list)
      (1) = ""
  inunit: (1-element list)
      (1) = ""
  tsam: (1-element list)
      (1) = -1
  timeunit = ""
  timedomain = %t
  w: (empty list)
  expname: (1-element list)
      (1) = ""
  name = ""
  notes: (empty list)
  userdata = []
  type = "iddata"
```
## 2
```
dat = iddata((1:6)',(1:6)');
diff_iddata(dat,1)
```
##
 ``` 
 ans = [struct] with fields:

  y: (1-element list)
      (1): (1-element list)
          (1) = [1;1;1;1;1]
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (1-element list)
      (1): (1-element list)
          (1) = [1;1;1;1;1]
  inname: (1-element list)
      (1) = ""
  inunit: (1-element list)
      (1) = ""
  tsam: (1-element list)
      (1) = -1
  timeunit = ""
  timedomain = %t
  w: (empty list)
  expname: (1-element list)
      (1) = ""
  name = ""
  notes: (empty list)
  userdata = []
  type = "iddata"
```
## 3
```
dat = iddata((1:6)',(1:6)');
 diff_iddata(dat,2)
 ```
##
```
 ans = [struct] with fields:

  y: (1-element list)
      (1): (1-element list)
          (1) = [0;0;0;0]
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (1-element list)
      (1): (1-element list)
          (1) = [0;0;0;0]
  inname: (1-element list)
      (1) = ""
  inunit: (1-element list)
      (1) = ""
  tsam: (1-element list)
      (1) = -1
  timeunit = ""
  timedomain = %t
  w: (empty list)
  expname: (1-element list)
      (1) = ""
  name = ""
  notes: (empty list)
  userdata = []
  type = "iddata"
```
## 4
```
dat = iddata((1:6)',(1:6)');
diff_iddata(dat,1,1)
```
##
```
Wrong number of input arguments.
```
## 5
```
dat = iddata((1:2:10)',(1:2:10)');
diff_iddata(dat)
```
##
```
ans = [struct] with fields:

  y: (1-element list)
      (1): (1-element list)
          (1) = [2;2;2;2]
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (1-element list)
      (1): (1-element list)
          (1) = [2;2;2;2]
  inname: (1-element list)
      (1) = ""
  inunit: (1-element list)
      (1) = ""
  tsam: (1-element list)
      (1) = -1
  timeunit = ""
  timedomain = %t
  w: (empty list)
  expname: (1-element list)
      (1) = ""
  name = ""
  notes: (empty list)
  userdata = []
  type = "iddata"
```

