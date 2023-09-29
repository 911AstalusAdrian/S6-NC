% Hermite

m = 8;
ak = @(x) 0;
b0 = sqrt(pi);
bk = @(x) x/2;
fx = @(x) 1;

J = jacobi_matrix(m, ak, b0, bk);
I = find_i(m, J, b0, fx)
