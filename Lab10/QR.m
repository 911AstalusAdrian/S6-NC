function retval = QR(A, B, n)
  [Q, R] = qr(A);
  x = backward(R, Q.' * B, n);
  retval = x;
endfunction
