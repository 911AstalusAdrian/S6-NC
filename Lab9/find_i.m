function retval = find_i(m, J, b0, fx)
  [v, d] = eig(J);
  nodes = diag(d);

  I = 0;
  for i = 1 : m
    elem = b0 * v(1, i)^2 * fx(nodes(i));
    I = I + elem;
  endfor

  retval = I;
endfunction
