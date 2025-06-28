/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Calling Sequence:
      dat = horzcat(dat1, dat2, dat3, ...)
Description:
  Horizontal concatenation of iddata datasets.
  The outputs and inputs are concatenated in the following way: ‘dat.y{e} = [dat1.y{e}, dat2.y{e}, ...]’
  ‘dat.u{e} = [dat1.u{e}, dat2.u{e}, ...]’ where E denotes the experiment.
  The number of experiments and samples must be equal for all datasets.
Parameters:
  `dat1, dat2, dat3 ...`  - iddata objects
  `dat`                   - Horizontally Concatenated iddata set
Dependencies:
    @iddata/cat - https://github.com/akash-sankar/CSToolboxFunctions/blob/main/%40iddata%20cat/cat.sci
    Use iddata function to provide inputs - http://github.com/akash-sankar/CSToolboxFunctions/blob/main/iddata/iddata.sci
    In Octave, After the function call, use struct(dat) to view the output.

*/
function dat = horzcat_iddata(varargin)
    dat = cat_iddata(2, varargin(:)); 
endfunction



