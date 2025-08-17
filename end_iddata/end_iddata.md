# end
## Description:
- The end function gives the end indexing for IDDATA objects. 
- Used by Octave for "dat(1:end)".
- ## Calling Sequence:
sys = end_iddata(dat,k,n)
## Parameters:
- `dat` - A data object (Eg. a matrix.)
- `k`(scalar) - Index position.
- `n` - Number of indices
## Dependencies:
- iddata - http://github.com/akash-sankar/CSToolboxFunctions/blob/main/iddata/iddata.sci
- Use iddata function to provide inputs
- @iddata/size - https://github.com/akash-sankar/CSToolboxFunctions/blob/main/%40iddata%20size/size.sci

# Examples
## 1
        dat = iddata((1:6)',(1:6)');
        x = end_iddata(dat,1,2);
        dat.y(1)(x)
        dat.u(1)(x)
##
        6
        6
## 2
        dat = iddata((10:15)', (100:105)');
        x = end_iddata(dat,1,2);
        dat.y(1)(x)
        dat.u(1)(x)
##
        15
        105
        
## 3
        y = [1 5; 2 6; 3 7; 4 8; 5 9]; 
        u = [10 20;11 21; 12 22; 13 23; 14 24]; 
        dat = iddata(y, u);
        x = end_iddata(dat,1,2);          
        dat.y(1)(x,:)              
        dat.u(1)(x:)
##
        5  9
        14  24
        
## 4
        dat = iddata((1:6)',(1:6)');
        end_iddata(dat,1,5);
##
        iddata: end: require at most 4 indices in the expression
## 5
         dat = iddata((1:6)',(1:6)');
        end_iddata(dat,5,1);
##
        iddata: end: invalid expression index k = 5
- Testcase 4 and 5 cannot be checked in Octave, Because end is overloaded as a keyword in Octave.
## 6
        dat = iddata((1:6)',(1:6)');
        x = end_iddata(dat,2,2);
        dat.y(1)(x)
        dat.u(1)(x)
##
         1
         1

