/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*Description
Return K-th difference of outputs and inputs of dataset DAT.
If K is not specified, default value 1 is taken.

Calling Sequence
DAT = diff (DAT)
DAT = diff (DAT, K)

Parameters
DAT — an iddata data set
K — an integer

Dependencies
Use iddata function to give inputs in Scilab
https://github.com/akash-sankar/CSToolboxFunctions/blob/main/iddata/iddata.sci
*/

function retdat = diff_iddata(dat, k)
    if argn(2) < 2 then
        k = 1;
    elseif argn(2) > 2 then
        error("Usage: dat = diff_iddata(dat,k)");
    end
    retdat = dat;
    for i = 1:length(dat.y)
        ymat = dat.y(i); 
        retdat.y(i) = list(diff(ymat, k, 1));
        disp(retdat.y(i));
    end

    for i = 1:length(dat.u)
        umat = dat.u(i); 
        retdat.u(i) = list(diff(umat, k, 1));
    end
endfunction
