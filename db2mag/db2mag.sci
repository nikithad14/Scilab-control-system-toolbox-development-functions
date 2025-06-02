/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
      The db2mag function converts the given value in db into magnitude.
      The number of arguments passed must be equal to 1.
      The input must be real and can be of any form i.e. single input, 1D array or a matrix.
Calling Sequence:
      mag = db2mag(db)
Parameters:
      db - A scalar, 1D array or a M*N matrix.Must be real.
*/

function mag = db2mag(db)
    if argn(2) <> 1 | ~isreal(db) then
        error("Error : Input must be a real numeric matrix.");
    end
    mag = 10 .^ (db ./ 20);
endfunction

