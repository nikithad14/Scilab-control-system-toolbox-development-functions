# ifft
## Description 
Transform iddata objects from frequency to time domain.
## Calling Sequence
`DAT = ifft (DAT)`
## Parameters
- Input : `DAT` - iddata set containing signals in frequency domain.The frequency values must be distributed equally from 0 to the Nyquist frequency.  The Nyquist frequency is only included for even signal lengths.
- Outputs : `DAT` - iddata identification dataset in time domain.  In order to preserve signal power and noise level, the FFTs are normalized by multiplying each transform by the square root of the signal length.
## Dependencies 
@iddata/size
https://github.com/akash-sankar/CSToolboxFunctions/blob/main/%40iddata%20size/size.sci
##
Use struct(DAT) in Octave after the function call.
## Examples
## 1
```
```
##
```
DAT_IFFT = [struct] with fields:

  y: (2-elements list)
      (1): (1-element list)
          (1) = [1,1;2,3;3,5;4,7;5,9;6,11;7,13;8,15;9,17;10,19]
      (2): (1-element list)
          (1) = [10,20;9,18;8,16;7,14;6,12;5,10;4,8;3,6;2,4;1,2]
  outname: (2-elements list)
      (1) = ""
      (2) = ""
  outunit: (2-elements list)
      (1) = ""
      (2) = ""
  u: (2-elements list)
      (1): (1-element list)
          (1) = [41,46;42,47;43,48;44,49;45,50;46,51;47,52;48,53;49,54;50,55]
      (2): (1-element list)
          (1) = [61,-66;62,-67;63,-68;64,-69;65,-70;66,-71;67,-72;68,-73;69,-74;70,-75]
  inname: (2-elements list)
      (1) = ""
      (2) = ""
  inunit: (2-elements list)
      (1) = ""
      (2) = ""
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
DAT2 = iddata({[(5:14).', (2:3:29).'], [(15:-1:6).', (30:-3:12).']},{[(51:60).', (56:65).'], [(71:80).', (-80:-1:-89).']});
ifft_iddata(DAT2)
```
##
```
DAT_IFFT = [struct] with fields:

  y: (2-elements list)
      (1): (1-element list)
          (1) = [5,2;6,5;7,8;8,11;9,14;10,17;11,20;12,23;13,26;14,29]
      (2): (1-element list)
          (1) = [15,30;14,28;13,26;12,24;11,22;10,20;9,18;8,16;7,14;6,12]
  outname: (2-elements list)
      (1) = ""
      (2) = ""
  outunit: (2-elements list)
      (1) = ""
      (2) = ""
  u: (2-elements list)
      (1): (1-element list)
          (1) = [51,56;52,57;53,58;54,59;55,60;56,61;57,62;58,63;59,64;60,65]
      (2): (1-element list)
          (1) = [71,-80;72,-81;73,-82;74,-83;75,-84;76,-85;77,-86;78,-87;79,-88;80,-89]
  inname: (2-elements list)
      (1) = ""
      (2) = ""
  inunit: (2-elements list)
      (1) = ""
      (2) = ""
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
DAT3 = iddata({[(1:5).', (10:10:50).'], [(5:-1:1).', (50:-10:10).']},{[(100:104).', (110:114).'], [(120:124).', (-130:-1:-134).']});
ifft_iddata(DAT3)
```
##
```
DAT_IFFT = [struct] with fields:

  y: (2-elements list)
      (1): (1-element list)
          (1) = [1,10;2,20;3,30;4,40;5,50]
      (2): (1-element list)
          (1) = [5,50;4,40;3,30;2,20;1,10]
  outname: (2-elements list)
      (1) = ""
      (2) = ""
  outunit: (2-elements list)
      (1) = ""
      (2) = ""
  u: (2-elements list)
      (1): (1-element list)
          (1) = [100,110;101,111;102,112;103,113;104,114]
      (2): (1-element list)
          (1) = [120,-130;121,-131;122,-132;123,-133;124,-134]
  inname: (2-elements list)
      (1) = ""
      (2) = ""
  inunit: (2-elements list)
      (1) = ""
      (2) = ""
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
## 4
```
DAT4 = iddata({[repmat(3,10,1), (10:19).'], [repmat(7,10,1), (20:-1:11).']}, {[repmat(40,10,1), (50:59).'], [repmat(-60,10,1), (-70:-1:-79).']});
ifft_iddata(DAT4)
```
##
```
y: (2-elements list)
      (1): (1-element list)
          (1) = [3,10;3,11;3,12;3,13;3,14;3,15;3,16;3,17;3,18;3,19]
      (2): (1-element list)
          (1) = [7,20;7,19;7,18;7,17;7,16;7,15;7,14;7,13;7,12;7,11]
  outname: (2-elements list)
      (1) = ""
      (2) = ""
  outunit: (2-elements list)
      (1) = ""
      (2) = ""
  u: (2-elements list)
      (1): (1-element list)
          (1) = [40,50;40,51;40,52;40,53;40,54;40,55;40,56;40,57;40,58;40,59]
      (2): (1-element list)
          (1): [10x2 double]
  inname: (2-elements list)
      (1) = ""
      (2) = ""
  inunit: (2-elements list)
      (1) = ""
      (2) = ""
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
## 5
```
ifft_iddata()
```
##
```
Usage: dat = ifft(dat)
```
