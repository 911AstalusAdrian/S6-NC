function retval = composite_trapezoidal(f, a, b, n)
  h = (b - a) / n;
  sum = 0;
  fsum = 0;
  for i = 1 : n-1
    xi = a + i * h;
    val = f(xi);
    fsum = fsum + val;
  endfor

  sum = f(a) + 2 * fsum + f(b);
  retval = (h/2) * sum;

endfunction
