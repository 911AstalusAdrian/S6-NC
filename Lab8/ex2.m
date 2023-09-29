a = 0;
b = 1;
f = @(x) exp(-(x^2));
e = 0.005;
m = 20;

adaptive_quadratures(f, a, b, e, @composite_rectangle, m)
adaptive_quadratures(f, a, b, e, @composite_trapezoidal, m)
adaptive_quadratures(f, a, b, e, @composite_simpson, m)
actual_value = 0.746824132812427
