function retval = barycentric(x, fx, val)
  nrNodes = length(x);

  # if val is in our array of x, then the result is f(x)
  for i = 1 : nrNodes
    if x(i) == val
      retval = fx(i);
      return;
    endif
  endfor

  # u(x)
  ux = 1;
  for i = 1 : nrNodes
    ux = ux * (val - x(i));
  endfor

  # wi
  w = [];
  for i = 1 : nrNodes
    wi = 1;
    for j = 1 : nrNodes
      if i != j
        wi = wi * (x(i) - x(j));
      endif
    endfor
    w = [w 1/wi];
  endfor

  # the sum for Lnf(x)
  res = 0;
  for i = 1 : nrNodes
    res = res + (w(i) / (val-x(i)) * fx(i));
  endfor

  # ux * sum
  retval = ux * res
end
