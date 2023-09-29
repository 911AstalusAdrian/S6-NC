# approximate sqrt(115) with Lagrange interpolation,
# using the known values for three given nodes;

nodes = [64, 100, 144]
values = [8, 10, 12]

format long;
barycentric(nodes, values, 115);
