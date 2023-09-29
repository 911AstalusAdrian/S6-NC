function retval = composite_rectangle(f, a, b, n)
  h = (b - a) / n;
  sum = 0;
  for i = 0 : n-1
    val = f(a + (i + 1/2) * h);
    sum = sum + val;
  endfor

  retval = h * sum;

endfunction
