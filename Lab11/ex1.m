n = 3;
A = 5 * eye(n) - diag(ones(n-1, 1), -1) - diag(ones(n-1, 1), 1);
B = 3 * ones(n, 1) + triu(ones(n,1)) + tril(ones(n,1),1-n);
x = zeros(n,1);
maxnit = 1000;
err = 10 ^ -5;
omega = 1.5;

[j1, j2] = jacobi(A, B, x, maxnit, err)
[g1, g2] = gauss(A, B, x, maxnit, err)
[s1, s2] = sor(A, B, x, maxnit, err, omega)
