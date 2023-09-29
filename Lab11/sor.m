function [x, k] = sor(a, b, x0, maxnit, err, omega)
  x = [];
  xprev = x0;
  n = length(x0);
  D = diag(diag(a));
  L = (-1) * triu(a, 1);
  U = (-1) * tril(a, -1);
  T = inv((1/omega) * D - L) *  ((1-omega)/omega * D + U);
  C = inv((1/omega) * D - L) * b;

  for k = 1 : maxnit
    x = T * xprev + C;
    if(norm(x - xprev, inf)) <= (1 - norm(T, inf)) / norm(T, inf)
      return;
    endif
    xprev = x;
  endfor
  printf("Maximum number of iterations exceeded\n");
  return
endfunction
