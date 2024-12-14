function sys = uminus(sys)
    if nargin() ~= 1
        error("lti: uminus: this is an unary operator");
    end
    [p, m] = size(sys);
    out_scl = -eye(p);
    sys = out_scl * sys;
endfunction
sys =1, 2;  
op = uminus(sys);
disp(op);
