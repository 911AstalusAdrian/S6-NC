function retval = newton(x, f, t)
  diff = differences(x, f);
  m = length(x);

  p = 1;
  sol = 0;

  for i = 1 : m
    sol += p * diff(1, i+1);
    p = p * (t-x(i));
  endfor
  retval = sol;
end
