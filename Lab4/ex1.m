x = [1, 1.5, 2, 3, 4];
lgx = [0, 0.17609,  0.30103,  0.47712,  0.60206];

s1 = newton(x, lgx, 2.5)
s2 = newton(x, lgx, 3.25)


i = 10 : 35;
yi = i ./ 10;
f = log10(yi);
interpolation = [];
len = length(yi);
for i = 1 : len
  interpolation = [interpolation newton(x, lgx, yi(i))];
endfor


E = max(abs(f - interpolation))
