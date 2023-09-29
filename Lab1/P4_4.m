% Plot the graph of the function
% f(x) = x^3 + sqrt(1-x), -1 <= x <= 0
%        x^3 - sqrt(1-x), 0 < x <= 1

x = -1 : 0.01 : 0;
y = 0.01 : 0.01 : 1;
f1 = x.^3 + sqrt(1-x);
f2 = y.^3 - sqrt(1-y);
plot(x, f1, y, f2)
