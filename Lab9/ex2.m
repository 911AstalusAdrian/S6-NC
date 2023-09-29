% Chebyshev 2nd
m = 8;
ak = @(x) 0;
b0 = pi / 2;
bk = @(x) 1/4;
fx = @(x) 1;

J = jacobi_matrix(m, ak, b0, bk);
I = find_i(m, J, b0, fx)
