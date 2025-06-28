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
      @iddata/cat

*/
function dat = cat_iddata(dim, varargin)
    if type(dim) <> 1 | size(dim, "*") <> 1 then
        error("iddata: cat: dim must be a scalar");
    end

    tmp = varargin;
    n_args = length(tmp);

    e = list();
    for i = 1:n_args
        e($+1) = length(tmp(i).y);
    end

    check_domain(tmp);

    select dim
    case 1 then 
        check_experiments(e);
        [p, m] = get_output_input_sizes(tmp);
        check_outputs(tmp, p);
        check_inputs(tmp, m);

        ycat = tmp(1).y(1);
        ucat = tmp(1).u(1);
        for i = 2:n_args
            ycat = [ycat; tmp(i).y(1)];
            ucat = [ucat; tmp(i).u(1)];
        end
        y = list(ycat); u = list(ucat);

        dat = iddata(y, u, tmp(1).tsam(1));
        dat.expname = tmp(1).expname;
        dat.outname = tmp(1).outname;
        dat.outunit = tmp(1).outunit;
        dat.inname = tmp(1).inname;
        dat.inunit = tmp(1).inunit;
        dat.timedomain = tmp(1).timedomain;

    case 2 then 
        check_experiments(e);
        check_samples(tmp);
        [p, m] = get_output_input_sizes(tmp);

        ycat = tmp(1).y(1);
        ucat = tmp(1).u(1);
        for i = 2:n_args
            ycat = [ycat, tmp(i).y(1)];
            ucat = [ucat, tmp(i).u(1)];
        end
        y = list(ycat); u = list(ucat);

        outname = list(); outunit = list();
        inname = list(); inunit = list();
        for i = 1:n_args
            outname($+1) = tmp(i).outname(1);
            outunit($+1) = tmp(i).outunit(1);
            inname($+1) = tmp(i).inname(1);
            inunit($+1) = tmp(i).inunit(1);
        end

        dat = iddata(y, u, tmp(1).tsam(1));
        dat.expname = tmp(1).expname;
        dat.outname = outname;
        dat.outunit = outunit;
        dat.inname = inname;
        dat.inunit = inunit;
        dat.timedomain = tmp(1).timedomain;

    case 3 then 
        [p, m] = get_output_input_sizes(tmp);
        check_outputs(tmp, p);
        check_inputs(tmp, m);

        y = list(); u = list();
        tsam = list(); expname = list();
        for i = 1:n_args
            y = y + tmp(i).y;
            u = u + tmp(i).u;
            tsam = tsam + tmp(i).tsam;
            expname = expname + tmp(i).expname;
        end

        dat = iddata(y, u, tsam);
        dat.expname = expname;
        dat.outname = tmp(1).outname;
        dat.outunit = tmp(1).outunit;
        dat.inname = tmp(1).inname;
        dat.inunit = tmp(1).inunit;
        dat.timedomain = tmp(1).timedomain;

    else
        error(msprintf("iddata: cat: ""%d"" is an invalid dimension", dim));
    end
endfunction

function check_domain(tmp)
    td = tmp(1).timedomain;
    for i = 2:length(tmp)
        if tmp(i).timedomain <> td then
            error("iddata: cat: cannot mix time- and frequency-domain datasets");
        end
    end
endfunction

function check_experiments(e)
    for i = 2:length(e)
        if e(i) <> e(1) then
            error("iddata: cat: number of experiments do not match");
        end
    end
endfunction

function [p, m] = get_output_input_sizes(tmp)
    p = list(); m = list();
    for i = 1:length(tmp)
        y = tmp(i).y(1);
        u = tmp(i).u(1);
        p($+1) = size(y, 2);
        m($+1) = size(u, 2);
    end
endfunction

function check_outputs(tmp, p)
    for i = 2:length(p)
        if p(i) <> p(1) then
            error("iddata: cat: number of outputs do not match");
        end
    end
    if ~compare_strings(tmp, "outname") then
        warning("iddata: cat: output names do not match\n");
    end
    if ~compare_strings(tmp, "outunit") then
        warning("iddata: cat: output units do not match\n");
    end
endfunction

function check_inputs(tmp, m)
    for i = 2:length(m)
        if m(i) <> m(1) then
            error("iddata: cat: number of inputs do not match");
        end
    end
    if ~compare_strings(tmp, "inname") then
        warning("iddata: cat: input names do not match\n");
    end
    if ~compare_strings(tmp, "inunit") then
        warning("iddata: cat: input units do not match\n");
    end
endfunction

function check_samples(tmp)
    n = size(tmp(1).y(1), 1);
    for i = 2:length(tmp)
        if size(tmp(i).y(1), 1) <> n then
            error("iddata: cat: number of samples do not match");
        end
    end
endfunction

function result = compare_strings(tmp, field)
    first = tmp(1)(field)(1);
    for i = 2:length(tmp)
        if tmp(i)(field)(1) <> first then
            result = %f;
            return;
        end
    end
    result = %t;
endfunction

function dat = horzcat(varargin)
    dat = cat_iddata(2, varargin(:)); 
endfunction



