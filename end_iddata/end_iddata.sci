/*2024 Author: Nikitha D <dnikitha2020@gmail.com>*/
/*
Description:
      The end function gives the end indexing for IDDATA objects. 
      Used by Octave for "dat(1:end)".
Calling Sequence:
      sys = end_iddata(dat,k,n)
Parameters:
      dat - A data object (Eg. a matrix.)
      k(scalar) - Index position.
      n - Indices 
Dependencies:
      size,switch

*/
function ret = end_iddata(dat, k, n)
  if n > 4 then
    error("iddata: end: require at most 4 indices in the expression");
  end

  select k
    case 1 then 
      ret = size(dat, 1);
      if length(ret) <> 1 & ~isequal(num2cell(ret)(:)) then
        error("iddata: end: for multi-experiment datasets, require equal number of samples when selecting samples with end");
      end
      ret = ret(1);
    case {2, 3, 4} then  
      ret = size(dat, k);
    else
      error("iddata: end: invalid expression index k = " + string(k));
  end
endfunction


