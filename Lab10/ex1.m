n = 4;
A = 5 * eye(n) - diag(ones(n-1, 1), -1) - diag(ones(n-1, 1), 1);
B = 3 * ones(n, 1) + triu(ones(n,1)) + tril(ones(n,1),1-n);

gauss_elim(A, B)
LUP(A, B, n)
cholesky(A, B, n)
QR(A, B, n)
