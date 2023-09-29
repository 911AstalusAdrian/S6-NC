# population of USA from 1930 to 1980
# approximate the population in the years 1955 and 1995
# using the barycentric form of the Lagrange interpolation polynomial


years = [1930, 1940, 1950, 1960, 1970, 1980];
population = [123203, 131669, 150697, 179323, 203212, 226505];

format long; # to avoid value format of type 1.6477e+05
barycentric(years, population, 1955); # ans: 164766.0117187500
barycentric(years, population, 1995); # ans: 401064.5429687501
