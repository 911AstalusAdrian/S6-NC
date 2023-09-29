% GRAPHS

%1. Plot the functions f:[0,1] -> R, f(x) = e^(10x(x-1))sin 12pi x
% and f:[0,1] -> R, f(x) = 3e^(5x^2-1) cos 12 pi x

x = 0 : 0.01 : 1 ; % [0,1]
f = exp(10 * x .* (x-1)) .* sin(12*pi*x) % f(x)
figure(1)
plot(x, f, 'r')

f2 = 3 * exp(5 * x .^ 2 - 1) .* cos(12*pi*x)
figure(2)
plot(x, f2, 'b')
