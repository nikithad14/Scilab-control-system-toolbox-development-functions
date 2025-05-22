# size
## Calling Sequence:
      [n, varargout] = size_lti(sys, dim)
## Parameters:
      sys         - LTI system structure with fields `inname` and `outname`
      dim (opt)   - Dimension indicator (0, 1, or 2). Default is 0.
                    0 → return or display both input/output sizes
                    1 → return number of outputs
                    2 → return number of inputs
      n           - Output size 
      varargout   - Second output, used when dim = 0 and two outputs are expected
## Dependencies:
      size, struct, error, mprintf
## Description:
      Returns the size of an LTI system object, similar to how size() behaves for standard data types.
      - When called with no dim and no outputs, it prints a message.
      - When called with one or two outputs, it returns sizes.
      - Handles errors for invalid inputs or usage.
## Examples
## 1
sys.inname = ["u1"];
sys.outname = ["y1"];
res = size_lti(sys, 1);
##
1
## 2
sys.inname = ["u1"];
sys.outname = ["y1"];
res = size_lti(sys, 2);
##
1
## 3
sys.inname = ["u1"];
sys.outname = ["y1"];
res = size_lti(sys, 0);
##
1  1

## 4
sys.inname = ["u1", "u2"];
sys.outname = ["y1"];
size_lti(sys, 3); 
##
Invalid value for dim. Must be 0, 1, or 2.

## 5
sys.inname = [];
sys.outname = ["y1", "y2"];
[n,vargout] = size_lti(sys, 0);
##
   2.
  (1) = 0
