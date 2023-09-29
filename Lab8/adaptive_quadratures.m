function I = adaptive_quadratures(f, a, b, e, met, m)
  I1 = met(f, a, b, m);
  I2 = met(f, a, b, 2*m);

  if abs(I1 - I2) < e
    I = I2;
    return;
  else
    I = adaptive_quadratures(f, a, (a + b) / 2, e, met, m) + adaptive_quadratures(f, (a + b) / 2, b, e, met, m);
  endif
endfunction
