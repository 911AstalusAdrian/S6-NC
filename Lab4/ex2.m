x = [1, 2, 3, 4, 5];
y = [22, 23, 25, 30, 28];
newton(x, y, 2.5)

range = 1 : 0.01 : 5;
interpolation = [];
r = length(range);
for i = 1 : r
  interpolation = [interpolation newton(x, y, range(i))];
end

plot(x, y, '*', range, interpolation, 'green');
