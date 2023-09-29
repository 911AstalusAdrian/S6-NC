
r = 0 : 0.01 : 2 * pi;
nodes = [0, pi/2, pi, 3 * pi/2, 2 * pi];
x = pi/4;
f = sin(nodes);



# a)
v1 = sin(x) # value of the function

# value of cubic natural spline
s = csape(nodes, f, 'variational');
v2 = fnval(s, x)

# value of cubic clamped spline function
ss = csape(nodes, f, 'complete', [1, 1]);
v3 = fnval(ss, x)


# b)

f1 = sin(r);
f2 = fnval(s, r);
f3 = fnval(ss, r);
plot(r, f1, r, f2, r, f3, pi/4, sin(pi/4), "*");

