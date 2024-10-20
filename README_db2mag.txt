FUNCTION : db2mag()

The function converts the input decibel value into magnitude value.

Function File :
function mg = db2mag(db)
    if nargin() ~= 1 then
        error("Invalid number of input arguments. Provide exactly one input.");
    end
    if ~isreal(db) then
        error("Input must be a real numeric matrix.");
    end
    mg = 10.^(db / 20);
endfunction

Function Call :
db = input("Enter the decibel value ");
mag = db2mag(db);
disp(mag);

 **Inputs**
1) Single integer
2) One dimensional array
3) Matrix (m*n)

**Test Cases**

1) db = 1
    mag = 1.1220185
  
2) db = [1 10 100] // 1D array
    mag = 1.1220185   3.1622777   100000.

3) db = [1 2 3;4 5 6] // matrix or 2D array
    mag =  1.1220185   1.2589254   1.4125375
                1.5848932   1.7782794   1.9952623

4) db = 2*%i // imaginary number - 2i
    Error : Input must be a real numeric matrix.

5) db = 1+2*%i //complex number - 1+2i
    Error : Input must be a real numeric matrix. 
 
6) db = [1+2*%i 8*%i;1 2]
    mag =  Input must be a real numeric matrix.

