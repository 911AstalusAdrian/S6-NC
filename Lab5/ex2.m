format long
x = [1 2];
f = [0 0.6931];
fp = [1 0.5];

r = hermite(x, f, fp, 1.5);

ans = abs(log(1.5) - r)

