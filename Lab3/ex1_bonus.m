x = -(pi/4) : 0.01 : pi/2;
fx = cos(x);
given_nodes = [0, pi/4, pi/3];

res = [];
nrNodes = length(given_nodes);
for i = 1 : nrNodes
  res = [res; interpolation_poly(x, fx, given_nodes(i))];
endfor

plot(x, res(1));
