function sys = times (sys1, sys2)
  if (argn(2) ~= 2) // prevent sys = times (sys1, sys2, sys3, ...)
    error ("lti: times: this is a binary operator");
    end
  [p1, m1] = size (sys1);
  [p2, m2] = size (sys2);
  if (p1 ~= p2 || m1 ~= m2)
    if (p1 == 1 && m1 == 1 && p2*m2 > 1)        // sys1 SISO, sys2 non-empty
      sys1 = repmat (sys1, p2, m2);
    elseif (p2 == 1 && m2 == 1 && p1*m1 > 1)    // sys2 SISO, sys1 non-empty
      sys2 = repmat (sys2, p1, m1);
    else
      error ("lti: times: system dimensions incompatible: (%dx%d) .* (%dx%d)", ...
              p1, m1, p2, m2);
          end
      end
  sys = sys1.*sys2;
endfunction
//sample testcase
u1 = [-1 5 0];
u2 = [1 0 -7];
sys = times(u1,u2);
disp(sys);


