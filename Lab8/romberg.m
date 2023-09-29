function retval = romberg(f, a, b, R, n, e)
  h = @(x) (b - a) / 2^(x-1);

  R(1, 1) = (b - a) / 2 * (f(a) + f(b));

  % R(K,1)
  for s = 2 : n

    sum = 0;
    for t = 1 : 2^(s-2)
      val = f(a + (t - 1/2) * h(s-1));
      sum = sum + val;
    endfor

    R(s, 1) = 1/2 * (R(s-1, 1) + h(s-1) * sum);

  endfor

  for j = 2 : n
    for k = 2 : n
      R(j, k) = (4 ^ (j-1) * R(j, k-1) - R(j-1, k-1)) / 4^(j-1) - 1

    endfor

    if(abs(R(j, j) - R(j-1, j-1)) < e)
      retval = R(j, j)
      return;
    endif
  endfor

endfunction
