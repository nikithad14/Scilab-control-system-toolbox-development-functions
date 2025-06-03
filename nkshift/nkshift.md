# nkshift
## Description
- Shift input channels of dataset DAT according to integer NK. 
- A positive value of NK means that the input channels are delayed NK samples. 
- By default, both input and output signals are shortened by NK samples. 
- If a third argument 'APPEND' is passed, the output signals are left untouched while NK zeros are appended to the (shortened) input signals such that the number of samples in DAT remains constant.
## Calling Sequence
- `DAT = nkshift (DAT, NK)`
- `DAT = nkshift (DAT, NK, 'APPEND')`
## Parameters
- `dat` - A dataset
- `nk` - An integer
## Dependencies
zeros, size, abs
## Examples
## 1
```
dat.y = list([1; 2; 3; 4]);
dat.u = list([10; 20; 30; 40]);
nk = 2;
nkshift(dat, nk)
```
##
```
y: (1-element list)
      (1) = [3;4]
u: (1-element list)
      (1) = [10;20]
```
## 2
```
dat.y = list([5; 6; 7; 8]);
dat.u = list([15; 25; 35; 45]);
nk = -1;
nkshift(dat, nk)
```
##
```
  y: (1-element list)
      (1) = [5;6;7]
  u: (1-element list)
      (1) = [25;35;45]
```
## 3
```
dat.y = list([10; 20; 30; 40]);
dat.u = list([100; 200; 300; 400]);
nk = 1;
nkshift(dat, nk)
```
##
```
  y: (1-element list)
      (1) = [20;30;40]
  u: (1-element list)
      (1) = [100;200;300]
```
## 4
```
dat.y = list([7; 8; 9]);
dat.u = list([70; 80; 90]);
nk = 0;
nkshift(dat, nk)
```
##
```
  y: (1-element list)
      (1) = [7;8;9]
  u: (1-element list)
      (1) = [70;80;90]
```
## 5
```
dat.y = list([1; 2]);
dat.u = list([10; 20]);
nk = 5;
nkshift(dat, nk)
```
##
```
  y: (1-element list)
      (1) = []
  u: (1-element list)
      (1) = []
```


