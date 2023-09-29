a = 0;
b = 1;
f = @(x) 1 / (1+x);
n = 13;
n2 = 14;

composite_rectangle(f, a, b, n)
composite_trapezoidal(f, a, b, n)
composite_simpson(f, a, b, n2)
log(2)
