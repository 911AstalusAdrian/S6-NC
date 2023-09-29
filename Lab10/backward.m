function retval = backward(A, B, n)
    x = zeros(1, n);

    x(n) = B(n) / A(n, n);

    for i = n-1 : -1 : 1
      sum = 0;
      for j = i+1 : n
        val = A(i, j) * x(j);
        sum = sum + val;
      endfor

      x(i) = (1 / A(i, i)) * (B(i) - sum);

    endfor

    retval = x;

endfunction
