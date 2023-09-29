f = @(x) (3 .* x .* exp(x) - exp(2 .* x));


x = [1 1.05];
fx = 3 .* x .* exp(x) - exp(2.*x);
fp = -2 .* exp(2.*x) + 3 .* x .* exp(x) + 3 .* exp(x);

approx = hermite(x, fx, fp, 1.03);
val = f(1.03);
err = abs(val - approx);


x2 = [1 1.05 1.07];

