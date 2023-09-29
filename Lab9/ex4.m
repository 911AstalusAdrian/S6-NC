% Laguerre
m = 8;
ak = @(x) 2*x + 2;
b0 = gamma(2);
bk = @(x) x * (x + 1);
fx = @(x) sin(x);
J = jacobi_matrix(m, ak, b0, bk);
I = find_i(m, J, b0, fx)
