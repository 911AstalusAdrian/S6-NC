function retval = cholesky(A, B, n)
  U = chol(A);
  y = forward(U.', B, n);
  x = backward(U, y, n);
  retval = x;
endfunction
