function retval = forward(A, B, n)
  x = zeros(1, n);

  x(1) = B(1) / A(1, 1);

  for i = 2 : n
    sum = 0;
    for j = 1 : i-1
      val = A(i, j) * x(j);
      sum = sum + val;
    endfor
    x(i) = (1 / A(i, i)) * (B(i) - sum);
  endfor
  retval = x;
endfunction
