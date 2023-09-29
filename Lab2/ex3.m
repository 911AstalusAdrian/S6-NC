# Plot the first six Taylor polynomials for
# f(x) = e^x and x0 = 0 on the interval [-1,3]


t = -1 : 0.01 : 3;
n = 6;
prev_f = 1;
hold on
for i = 0:n
	f = prev_f + t.^i / factorial(i);
	plot(t, f);
	prev_f = f;
end
hold off
input("")
