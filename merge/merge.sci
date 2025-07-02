/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Description:
       Concatenate experiments of iddata datasets.
      The experiments are concatenated in the following way: dat.y = [dat1.y; dat2.y; ...] dat.u = [dat1.u; dat2.u; ...]
      The number of outputs and inputs must be equal for all datasets.
Calling Sequence:
      DAT = merge(DAT1, DAT2, ...)
Parameters:
      DAT1, DAT2, ... - iddata datasets.
Dependencies:
      @iddata/cat - https://github.com/akash-sankar/CSToolboxFunctions/blob/main/%40iddata%20cat/cat.sci
      Use iddata function to provide inputs - http://github.com/akash-sankar/CSToolboxFunctions/blob/main/iddata/iddata.sci
      Use struct(dat) to view the output in Octave
*/

function dat = merge_iddata(varargin)
    dat = varargin(1);  
    for i = 2:length(varargin)
        dat = cat_iddata(3, dat, varargin(i));
    end
endfunction




