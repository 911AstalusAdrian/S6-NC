function z = aitken(x, y, a)
  err=1e-3;
  [z, I] = sort(abs(x-a));
  x = x(I);
  y = y(I);
  n = length(x);

  sol = zeros(n,n);
  sol(:,1) = y';
  for i = 1 : n
      for j = 1 : i-1
         sol(i,j+1) = (1/(x(i)-x(j))) * (sol(j,j) * (x(i)-a) - sol(i,j) * (x(j)-a));
      end
      if i>1 && abs(sol(i,i) - sol(i-1,i-1)) <= err
            z = sol(i,i);
            return
      end
   end
