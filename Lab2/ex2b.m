# Plot, in the same figure, the first n Chebyshev polynomials of
# the first kind, using the following recurrence formula:
# Tn+1(x) = 2x Tn(x) - Tn-1(x), x in [-1, 1]
# with T0(x) = 1 and T1(x) = x
1;

function c = chebyshev (n, x)
    if n == 0
      c = 1;
    elseif n == 1
      c = x;
    else
      c = 2 * x .* chebyshev(n-1,x) - chebyshev(n-2,x);
    endif
endfunction


N = 3;
hold on;
x = -1 : 0.01 : 1;
for n = 1:N
  t = chebyshev(n,x);
  plot(x,t);
endfor
