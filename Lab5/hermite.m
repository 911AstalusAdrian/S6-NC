function sol = hermite(x, f, fp, e)
  n = length(x);
  nx = [];
  nf = [];

  for i = 1 : n
    nx = [nx x(i) x(i)];
    nf = [nf f(i) f(i)];
  endfor

  x = nx;
  f = nf;
  n = length(x);

  H = [x ; f];
  T = [];

  for j = 1 : n-1
    if mod(j, 2) == 1
      T = [T fp((j+1)/2)];
    else
      T = [T (H(2, j+1) - H(2, j)) / (H(1, j+1) - H(1, j))];
    endif
  endfor

  H = [H; T 0];

  for i = 3 : n
    T = [];
    for j = 1 : n-i + 1
      T = [T (H(i, j+1) - H(i, j)) / (H(1, j+i-1) - H(1, j))];
    endfor
    T = [T zeros(1, i-1)];
    H = [H; T];
    P = T;
  endfor
  H = H';

  p = 1;
  sol = 0;
  for i = 1 : n
    sol += p * H(1, i+1);
    p = p * (e - x(i));
  endfor

end
