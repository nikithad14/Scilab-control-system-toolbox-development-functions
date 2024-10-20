function mg = db2mag(db)
    mg = 10^(db / 20);
endfunction

db = input("Enter the decibel value ");
mag = db2mag(db);
disp(mag);


