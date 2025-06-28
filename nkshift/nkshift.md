# @iddata/nkshift
## Description
Shift input channels of dataset dat according to integer nk. A positive value of nk means that the input channels are delayed nk samples. By default, both input and output signals are shortened by nk samples.

## Calling Sequence
- `datout = nkshift (dat, nk)`

## Parameters
- `datout` (Structure): Shifted iddata set.
- `dat` (Structure): iddata set to be shifted.
- `nk` (Real scalar): Amount the iddata set is to be shifted.

## Dependencies
 - iddata - https://github.com/akash-sankar/CSToolboxFunctions/blob/main/iddata/iddata.sci
 - Run iddata function in Scilab while giving the testcase.
##
Use struct(dat) to view the outputs in Octave.

## Examples
1.
```
dat = iddata ((1:6)', (1:6)');
dat = nkshift_iddata(dat,1)
```
```
 dat = [struct] with fields:

  y: (1-element list)
      (1) = [2;3;4;5;6]
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (1-element list)
      (1) = [1;2;3;4;5]
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

2.
```
dat = iddata ((1:6)', (1:6)');
dat = nkshift_iddata(dat,4)
```
```
 ans = [struct] with fields:

  y: (1-element list)
      (1) = [5;6]
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (1-element list)
      (1) = [1;2]
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

3.
```
dat = iddata ((1:6)', (1:6)');
dat = nkshift_iddata(dat)
```
```
 ans = [struct] with fields:

  y: (1-element list)
      (1) = [1;2;3;4;5;6]
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (1-element list)
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

4.
```
nkshift_iddata()
```
```
Submatrix incorrectly defined.
```

5.
```
dat = iddata ((1:6)', (1:6)');
dat = nkshift_iddata(dat,7)
```
```
dat = [struct] with fields:

  y: (1-element list)
      (1) = []
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (1-element list)
      (1) = []
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
6.
```
dat = iddata((1:6)', (1:6)');
dat = nkshift_iddata(dat, -2)
```
```
dat = [struct] with fields:

  y: (1-element list)
      (1) = [1;2;3;4]
  outname: (1-element list)
      (1) = ""
  outunit: (1-element list)
      (1) = ""
  u: (1-element list)
      (1) = [3;4;5;6]
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
7
```
dat = iddata((1:6)', (1:6)');
dat = nkshift_iddata(dat, [1 2])
```
```
iddata: nkshift: "nk" must be a scalar integer
```



