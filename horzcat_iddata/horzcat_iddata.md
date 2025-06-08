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
@iddata/cat

## Examples 
## 1
```
dat = horzcat(iddata (1, 1), iddata (2, 2))
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
dat = horzcat(iddata (1, 1), iddata (2, 2), iddata(3, 3))
```
##
```
dat = [struct] with fields:

  y: (1-element list)
      (1) = [1,2,3]
  outname: (3-elements list)
      (1) = ""
      (2) = ""
      (3) = ""
  outunit: (3-elements list)
      (1) = ""
      (2) = ""
      (3) = ""
  u: (1-element list)
      (1) = [1,2,3]
  inname: (3-elements list)
      (1) = ""
      (2) = ""
      (3) = ""
  inunit: (3-elements list)
      (1) = ""
      (2) = ""
      (3) = ""
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
dat = horzcat(iddata (1, 1), iddata ({2, 3}, {2, 3}))
```
##
```
iddata: cat: number of experiments do not match
```
## 4
```
dat = horzcat(iddata (1, 1), iddata ({2, 3}, {2, 3}))
```
##
```
iddata: cat: number of experiments do not match
```
## 5
```
 horzcat()
```
## 
```
Invalid index.
```


