% Plot, on a single graph, the functions:
% f1, f2, f3: [0, 2pi] -> R, f1(x) = cos x, f2(x) = sin x, f3(x) = cos 2x
x = 0 : 0.01 : 2*pi;
f1 = cos(x);
f2 = sin(x);
f3 = cos(2*x);

% plot(x, f1, 'r', x, f2, 'g', x, f3, 'b') v1

plot(x, f1, 'r')
hold on
plot(x, f2, 'g')
plot(x, f3, 'b')
hold off

