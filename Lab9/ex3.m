% Legendre
m = 8;
ak = @(x) 0;
b0 = 2;
bk = @(x) (4 - x^(-2))^(-1);
fx = @(x) sin(x^2);

J = jacobi_matrix(m, ak, b0, bk);
I = find_i(m, J, b0, fx)
