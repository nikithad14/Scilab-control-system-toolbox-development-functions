function sys = uminus(sys)
    if nargin() ~= 1
        error("lti: uminus: this is an unary operator");
    end
    [p, m] = size(sys);
    // Create a negative identity matrix of size p x p
    out_scl = -eye(p);
    // Multiply sys by the negative identity matrix
    sys = out_scl * sys;
endfunction
sys = [1, 2; 3, 4; 5, 6];  
disp("Input:");
disp(sys);
op = uminus(sys);
disp("Output:");
disp(op);
