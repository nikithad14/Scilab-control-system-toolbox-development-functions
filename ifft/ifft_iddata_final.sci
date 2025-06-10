/* 2024 Author: Nikitha D <dnikitha2020@gmail.com> */
/*
Description
Transform iddata objects from frequency to time domain.
Calling Sequence
DAT = ifft (DAT)
Parameters
Input:
DAT — iddata set containing signals in frequency domain. The frequency values must be distributed equally from 0 to the Nyquist frequency. The Nyquist frequency is only included for even signal lengths.
Outputs:
DAT — iddata identification dataset in time domain. In order to preserve signal power and noise level, the FFTs are normalized by multiplying each transform by the square root of the signal length.
Dependencies
@iddata/size
*/
function dat = ifft_iddata(dat)
    if argn(2) ~= 1 then
        error("Usage: dat = ifft(dat)");
    end

    if dat.timedomain then
        return;
    end
   e = size(dat.w,"c");
    // Check: First frequency value in each dat.w(i) must be zero
    for i = 1:e
        b1 = list(dat.w);
        b2 = cell2mat(b1(1)(i));
        if  b2(1) >= %eps then
            error("iddata: ifft: first frequency must be zero");
        end
    end

    // Check: Each w(i) must be linearly spaced (second-order differences ≈ 0)
    for i = 1:e
        b1 = list(dat.w);
        b2 = cell2mat(b1(1)(i));
        w = b2(i);
        if or(abs(diff(w, 2)) > 1e-4 * w(2:$-1)) then
            error("iddata: ifft: require linearly spaced frequency vectors");
        end
    end
    [x, a1, a2, e] = size_iddata(dat); // x = number of frequency points
x = matrix(x, -1, 1);
n = x;
nconj = x - modulo(x, 2);

for i = 1:length(dat.y)
    y = dat.y(i)(1);
    ni = n(i);
    nci = nconj(i);
    if nci >= 2 then
        yfull = [y; conj(y(nci:-1:2, :))];
    else
        yfull = y;
    end
    yt = real(fft(yfull, 1, 1)) * sqrt(ni + nci);
    dat.y(i) = list(yt);
end
for i = 1:length(dat.u)
    u = dat.u(i)(1);
    ni = n(i);
    nci = nconj(i);
    if nci >= 2 then
        ufull = [u; conj(u(nci:-1:2, :))];
    else
        ufull = u;
    end
    ut = real(fft(ufull, 1, 1)) * sqrt(ni + nci);
    dat.u(i) = list(ut);
end
    dat.w = [];
    dat.timedomain = %t;

endfunction

