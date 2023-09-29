x = linspace(0, 6, 13);
fx = exp(sin(x));

r = 0 : 0.01 : 6;
fr = exp(sin(r));
interpolation = [];
l = length(r);
for i = 1 : l
  interpolation = [interpolation newton(x, fx, r(i))];
end

subplot(1, 3, 1);
plot(x, fx, "*", x, fx);

subplot(1, 3, 2);
plot(r, fr, 'green');

subplot(1, 3, 3);
plot(r, interpolation);
