time = [0 3 5 8 13];
dist = [0 225 383 623 993];
speed = [75 77 80 74 72];


t = 10;
tp = 10.001;

pos = hermite(time, dist, speed, t);
ansp = hermite(time, dist, speed, tp);

spd = (ansp - pos) / 0.001
