/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Description:
Shift input channels of dataset DAT according to integer NK. 
A positive value of NK means that the input channels are delayed NK samples. 
By default, both input and output signals are shortened by NK samples. 
If a third argument 'APPEND' is passed, the output signals are left untouched while NK zeros are appended to the (shortened) input signals such that the number of samples in DAT remains constant.
Calling Sequence:
`DAT = nkshift (DAT, NK)`
`DAT = nkshift (DAT, NK, 'APPEND')`
Parameters:
`dat` - A dataset
`nk` - An integer
Dependencies:
zeros, size, abs
*/
function dat = nkshift(dat, nk)
  if argn(2) < 2 then
    nk = 0;
  elseif argn(2) > 2 then
    error("Usage: dat = nkshift(dat, nk)");
  end

  if typeof(nk) <> "constant" | size(nk, "*") <> 1 then
    error("iddata: nkshift: nk must be a scalar integer");
  end
  snk = sign(nk);
  nk = abs(nk);

  ny = length(dat.y);
  nu = length(dat.u);

  if argn(2) == 2 then
    if snk >= 0 then
      for i = 1:ny
        ymat = dat.y(i);
        dat.y(i) = ymat(nk+1:$, :);
      end
      for i = 1:nu
        umat = dat.u(i);
        dat.u(i) = umat(1:$-nk, :);
      end
    else
      for i = 1:ny
        ymat = dat.y(i);
        dat.y(i) = ymat(1:$-nk, :);
      end
      for i = 1:nu
        umat = dat.u(i);
        dat.u(i) = umat(nk+1:$, :);
      end
    end
  else
    //[~, ~, m] = size(dat);
    s = size(dat);
    m = s(3);
    if snk >= 0 then
      for i = 1:nu
        umat = dat.u(i);
        zer = zeros(nk, size(umat, 2));
        dat.u(i) = [zer; umat(1:$-nk, :)];
      end
    else
      for i = 1:nu
        umat = dat.u(i);
        zer = zeros(nk, size(umat, 2));
        dat.u(i) = [umat(nk+1:$, :); zer];
      end
    end
  end
endfunction
