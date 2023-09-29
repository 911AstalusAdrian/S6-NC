# Chebyshev polynomials of the first kind are defined by
# Tn(t) = cos(n*arccos t), t in [-1, 1]
# Plot, in the same figure, the polynomials T1, T2, T3

x = -1 : 0.01 : 1
hold on;

T1 = cos(acos(x));
plot(x, T1);

T2 = cos(2.*acos(x));
plot(x, T2);

T3 = cos(3.*acos(x));
plot(x, T3);
