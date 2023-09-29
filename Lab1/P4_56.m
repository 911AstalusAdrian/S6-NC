% For x in {0, 1, .. 50} plot the function
% f(x) = x/2 if x even
%        3x + 1 if x odd

e = 0 : 2 : 50;
o = 1 : 2 : 49;
f1 = e/2;
f2 = 3.*o + 1;
plot(e, f1, '*', o, f2, '+')

% Compute g = 1 + 1(1+1/(..)
g = 1 + 1/(1 + 1/(1 + 1/(1 + 1/(1 + 1/(1+1)))))
