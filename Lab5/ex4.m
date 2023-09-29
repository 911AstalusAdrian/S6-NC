x = [8.3 8.6];
fx = [17.56492 18.50515];
fp = [3.116256 3.151762];

approx = hermite(x, fx, fp, 8.4)
f = 8.4 * log(8.4);
sol = abs(f - approx)

