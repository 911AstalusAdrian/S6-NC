function retval = differences(x, f)
  n = length(x);
  t = [x ; f];
  for i = 2 : n
    nt = [];
    for j = 1 : n-i+1
      nt = [nt (t(i, j+1) - t(i, j)) / (t(1, j+i-1) - t(1, j))];
    endfor
    nt = [nt zeros(1, i-1)];
    t = [t; nt];
    pt = nt;
  endfor
  retval = t';
end
