function retval = composite_simpson(f, a, b, n)
  m = n / 2;
  h = (b - a) / n;

  finalsum = 0;
  sum1 = 0;
  sum2 = 0;

  for i = 1 : m
    xi = a + (2*i - 1) * h;
    val = f(xi);
    sum1 = sum1 + val;
  endfor

  for i = 1 : m-1
    xi = a + 2 * i * h;
    val = f(xi);
    sum2 = sum2 + val;
  endfor

  sum = f(a) + 4 * sum1 + 2 * sum2 + f(b);
  retval = (h / 3) * sum;
endfunction
