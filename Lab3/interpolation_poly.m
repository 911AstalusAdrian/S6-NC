function retval = interpolation_poly(x, fx, val)
   nrNodes = length(x);


   li = [];
   for i = 1 : nrNodes
     temp = 1;
     for j = 1 : nrNodes
       if i != j
         temp = temp * ( (val - x(j)) / (x(i) - x(j)));
       endif
     endfor
     li = [li temp];
   endfor
   retval = li;
endfunction
