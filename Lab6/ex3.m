T = [0, 10, 20, 30, 40, 60, 80, 100];
P = [0.0061, 0.0123, 0.0234, 0.0424, 0.0738, 0.1992, 0.4736, 1.0133];

f1 = polyfit(T, P, 1);
p1 = polyval (f1, 45)


f2 = polyfit(T, P, 2);
f3 = polyfit(T, P, 3);

p2 = polyval(f2, 45)
p3 = polyval(f3, 45)

v = 0.095848;
abs(p1 - v)
abs(p2 - v)
abs(p3 - v)


range = 0 : 0.01 : 100;
pp1 = polyval(f1, range);
pp2 = polyval(f2, range);
pp3 = polyval(f3, range);


plot(range, pp1, range, pp2, range, pp3, T, P, "*");
