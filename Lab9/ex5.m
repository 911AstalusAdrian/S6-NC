% Chebyshev 1st
m = 8;
ak = @(x) 0;
b0 = pi;
b1 = 1/2;
bk = @(x) 1/4;
fx = @(x) x^2;

J = jacobi_chebyshev(m, ak, b0, b1, bk)
I = find_i(m, J, b0, fx)

