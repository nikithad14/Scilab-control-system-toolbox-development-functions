function ret = end_function(sys, k, n)
    if n ~= 2 then
        error("lti: end: require 2 indices in the expression");
    end
    [p, m] = size(sys);
    select k
        case 1
            ret = p; 
        case 2
            ret = m;
        else
            error("lti: end: invalid expression index k = %d", k);
    end
endfunction
//sample
sys = [1, 2; 3, 4; 5, 6];
ret1 = end_function(sys, 1, 2);
disp("Rows " + string(ret1));
ret2 = end_function(sys, 2, 2);
disp("Columns " + string(ret2));

