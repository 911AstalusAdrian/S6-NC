# Considering h = 0.25, xi = 1 + ih, i = 0,6 and
# f(x) = sqrt(5x^2 + 1), construct the finite differences table
1;

function finite_diff = ex4(f)
  n = length(f);
  finite_diff = [f', zeros(n, n-1)];
  for k = 2:n
    for i = 1:n-k+1
      finite_diff(i,k) = finite_diff(i+1, k-1) - finite_diff(i, k-1);
    endfor
  endfor
endfunction
n = 6;
i = 0 : n;
h = 0.25;
xi = 1 + i*h;
fi = sqrt(5*xi.^2+1);
ex4(fi)
