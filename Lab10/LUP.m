function retval = LUP(A, B, n)
  [L, U, P] = lu(A);
  y = forward(L, P*B, n);
  x = backward(U, y, n);
  retval = x;
endfunction
