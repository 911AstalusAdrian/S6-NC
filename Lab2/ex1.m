# The first 4 Legendre polynomials are given by:
# l1(x) = x
# l2(x) = 3/2 x^2 - 1/2
# l3(x) = 5/2 x^3 - 3/2 x
# l4(x) = 35/8 x^4 - 15/4 x^2 + 3/8
# x belongs to [0,1]
# Divide the display in 4 parts and plot in each part the Legendre polynomial l1, i = 1, ..., 4

x = 0 : 0.01 : 1

subplot(2,2,1)
l1 = x;
plot(x, l1);

subplot(2,2,2)
l2 = 3/2 * x.^2 - 1/2;
plot(x, l2);

subplot(2,2,3)
l3 = 5/2 * x.^3 - 3/2.*x;
plot(x, l3);

subplot(2,2,4)
l4 = 35/8 * x.^4 - 15/4 * x.^2 + 3/8;
plot(x,l4);
