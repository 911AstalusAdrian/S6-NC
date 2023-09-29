[x, y] = ginput(5);
t = 0 : 0.01 : 1;

s = csape(x, y, 'variational');
v = fnval(s, t);
plot(t, v, x, y, "*");
