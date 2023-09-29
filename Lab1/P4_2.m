% Plot the epicycloid for given a,b
% x(t) = (a+b)cos(t) - b(cos(a/b+1)t)
% x(t) = (a+b)sin(t) - b(sin(a/b+1)t)
% t belongs to [0, 10pi]
t = 0 : 0.01 : 10*pi;
a = 4;
b = 5;
x = (a+b)*cos(t) - b*cos((a/b+1)*t)
y = (a+b)*sin(t) - b*sin((a/b+1)*t)
plot(x,y)
