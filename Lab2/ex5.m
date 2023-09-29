# For x0 = 2, x1 = 4, x2 = 6, x3 = 8
# and f0 = 4, f1 = 8, f2 = 14, f3 = 16
# construct the divided differences table

1;

function div_diff = ex5(x, f)
  n = length(x);
  div_diff = [f', zeros(n, n-1)];
  for k = 2:n
    for i = 1:n-k+1
      div_diff(i,k) = (div_diff(i+1,k-1)-div_diff(i,k-1))/(x(i+k-1)-x(i));
    endfor
  endfor
  div_diff = [x', div_diff];
endfunction

X = [2, 4, 6, 8];
F = [4, 8, 14, 16];
ex5(X,F)
