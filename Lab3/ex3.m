x = 0 : 0.01 : 10;
fx = (1 + cos(pi * x)) ./ (1 + x);

sol = [];
p = linspace(0, 10, 21);
fp = (1 + cos(pi * p)) ./ (1 + p);
for i = 1 : length(x)
  sol = [sol barycentric(p, fp, x(i))];
endfor

subplot(1, 2, 1);
plot(x, fx);
subplot(1, 2, 2);
plot(x, sol);
