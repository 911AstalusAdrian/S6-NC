n = 25;
mat = zeros(n, n);
a = 0;
b = 2 * pi;
f = @(x) 1 / (2 + cos(x));
e = 0.001;

romberg(f, a, b, mat, n, e)

(2 * pi) / 3
