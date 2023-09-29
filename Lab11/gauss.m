function [x, k] = gauss(a, b, x0, maxnit, err)
  x = [];
  xprev = x0;
  n = length(x0);
  D = diag(diag(a));
  L = (-1) * triu(a, 1);
  U = (-1) * tril(a, -1);
  T = inv(D-L) *  U;
  C = inv(D-L) * b;

  for k = 1 : maxnit
    x = T * xprev + C;
    if(norm(x - xprev, inf)) <= ((1 - norm(T, inf)) / norm(T, inf)) * err
      return;
    endif
    xprev = x;
  endfor
  printf("Maximum number of iterations exceeded\n");
endfunction
