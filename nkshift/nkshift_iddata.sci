/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
    Shift input channels of dataset dat according to integer nk. A positive value of nk means that the input channels are delayed nk samples. By default, both input and output signals are shortened by nk samples.
Calling Sequence:
    datout = nkshift (dat, nk)
Parameters:
    datout (Structure): Shifted iddata set.
    dat (Structure): iddata set to be shifted.
    nk (Real scalar): Amount the iddata set is to be shifted.
Dependencies
   iddata - https://github.com/akash-sankar/CSToolboxFunctions/blob/main/iddata/iddata.sci
   Run iddata function in Scilab while giving the testcase.

*/
function dat = nkshift(dat, nk)
    if argn(2) > 2 then
        error("nkshift: too many input arguments");
    end

    if argn(2) < 2 then
        nk = 0;
    end

    if ~(isreal(nk) & isscalar(nk)) then
        error("iddata: nkshift: ""nk"" must be a scalar integer");
    end
    snk = sign(nk);
    nk = abs(nk);

    if argn(2) == 2 then 
        if snk >= 0 then
            for i = 1:length(dat.y)
                y = dat.y(i);
                u = dat.u(i);
                dat.y(i) = y(nk+1:$, :);
                dat.u(i) = u(1:$-nk, :);
            end
        else
            for i = 1:length(dat.y)
                y = dat.y(i);
                u = dat.u(i);
                dat.y(i) = y(1:$-nk, :);
                dat.u(i) = u(nk+1:$, :);
            end
        end
    else 
        [x1,x2,m] = size(dat);
        if snk >= 0 then
            for i = 1:length(dat.u)
                u = dat.u(i);
                dat.u(i) = [zeros(nk, m); u(1:$-nk, :)];
            end
        else
            for i = 1:length(dat.u)
                u = dat.u(i);
                dat.u(i) = [u(nk+1:$, :); zeros(nk, m)];
            end
        end
    end
endfunction
