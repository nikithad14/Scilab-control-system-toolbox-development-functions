# horzcat
## Description:
- Horizontal concatenation of iddata datasets.
- The outputs and inputs are concatenated in the following way: ‘dat.y{e} = [dat1.y{e}, dat2.y{e}, ...]’
  ‘dat.u{e} = [dat1.u{e}, dat2.u{e}, ...]’ where E denotes the experiment.
- The number of experiments and samples must be equal for all datasets.
## Calling Sequence:
`dat = horzcat(dat1, dat2, dat3, ...)`
## Parameters:
- `dat1, dat2, dat3 ...`  - iddata objects
- `dat`                   - Horizontally Concatenated iddata set
## Dependencies:
- @iddata/cat - https://github.com/akash-sankar/CSToolboxFunctions/blob/main/%40iddata%20cat/cat.sci
- iddata - http://github.com/akash-sankar/CSToolboxFunctions/blob/main/iddata/iddata.sci
- Use iddata function to provide inputs
- @iddata/size - https://github.com/akash-sankar/CSToolboxFunctions/blob/main/%40iddata%20size/size.sci
- In Octave, After the function call, use struct(dat) to view the output.
## Examples 
## 1
```
dat = horzcat_iddata(iddata (1, 1), iddata (2, 2))
```
##
```
dat = [struct] with fields:

  y: (1-element list)
      (1) = [1,2]
  outname: (2-elements list)
      (1) = ""
      (2) = ""
  outunit: (2-elements list)
      (1) = ""
      (2) = ""
  u: (1-element list)
      (1) = [1,2]
  inname: (2-elements list)
      (1) = ""
      (2) = ""
  inunit: (2-elements list)
      (1) = ""
      (2) = ""
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
dat1 = iddata([1;2;3], [4;5;6]);               
dat2 = iddata([7 8;9 10;11 12], [13;14;15]);   
dat = horzcat_iddata(dat1, dat2); 
```
##
```
 dat = [struct] with fields:

  y: (1-element list)
      (1) = [1,7,8;2,9,10;3,11,12]
  outname: (2-elements list)
      (1) = ""
      (2) = ""
  outunit: (2-elements list)
      (1) = ""
      (2) = ""
  u: (1-element list)
      (1) = [4,13;5,14;6,15]
  inname: (2-elements list)
      (1) = ""
      (2) = ""
  inunit: (2-elements list)
      (1) = ""
      (2) = ""
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
dat = horzcat_iddata(iddata (1, 1), iddata ({2, 3}, {2, 3}))
```
##
```
iddata: cat: number of experiments do not match
```
## 4
```
y1 = list([0:6]');
u1 = list([60:66]');
y2 = list([11:17]');
u2 = list([70:76]');
dat1 = iddata(y1, u1);
dat2 = iddata(y2, u2);
dat = horzcat_iddata(dat1, dat2)

```
##
```
dat = [struct] with fields:

  y: (1-element list)
      (1) = [0,11;1,12;2,13;3,14;4,15;5,16;6,17]
  outname: (2-elements list)
      (1) = ""
      (2) = ""
  outunit: (2-elements list)
      (1) = ""
      (2) = ""
  u: (1-element list)
      (1) = [60,70;61,71;62,72;63,73;64,74;65,75;66,76]
  inname: (2-elements list)
      (1) = ""
      (2) = ""
  inunit: (2-elements list)
      (1) = ""
      (2) = ""
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
## 5
```
dat1 = iddata([1; 2; 3], [10; 11; 12]);
dat2 = iddata([4; 5; 6], [13; 14; 15]);
dat = horzcat_iddata(dat1, dat2)
```
## 
```
dat = [struct] with fields:

  y: (1-element list)
      (1) = [1,4;2,5;3,6]
  outname: (2-elements list)
      (1) = ""
      (2) = ""
  outunit: (2-elements list)
      (1) = ""
      (2) = ""
  u: (1-element list)
      (1) = [10,13;11,14;12,15]
  inname: (2-elements list)
      (1) = ""
      (2) = ""
  inunit: (2-elements list)
      (1) = ""
      (2) = ""
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


