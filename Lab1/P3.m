% POLYNOMIALS

% Evaluate the polynomial p(x) = 2x^3 - 5x^2+ 8 in x= 2:
coeff = [2 -5 0 8];
res = polyval(coeff, 2)

% Find the roots of the polynomial p(x) = x^3 - 5x^2 - 17x + 21
coeff2 = [1 -5 -17 21];
res2 = roots(coeff2)
