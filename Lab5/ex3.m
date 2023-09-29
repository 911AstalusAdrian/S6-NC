n = linspace(-5, 5, 15);
fn = sin(2.*n);
fp = 2 .* cos(2.*n);


x = -5 : 0.01 : 5;
fx = sin(2.*x);




l = length(x);
s = [];
for i = 1 : l
  s = [s hermite(n, fn, fp, x(i))];
end


subplot(2, 1, 1)
plot(x, fx, 'red')
subplot(2, 1, 2)
plot(x, s)
