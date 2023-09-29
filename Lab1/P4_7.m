% Plot the function g : [-2, 2] X [-4, 4] -> R, g(x,y) = e^-( (x-1/2)^2 + (y-1/2)^2 )

[x, y] = meshgrid(-2 : 0.01 : 2, -4 : 0.01 : 4);
g = exp(-( (x-1/2).^2 + (y-1/2).^2) );
mesh(x, y, g)
