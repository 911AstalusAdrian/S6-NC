function retval = jacobi_chebyshev(m, ak, b0, b1, bk)
 alpha_k = zeros(m, 1);
 beta_k = zeros(m-1, 1);

 for j = 0 : m-1
   alpha_k(j+1) = ak(j);
 endfor

beta_k(1) = sqrt(b1);
 for i = 2 : m-1
   beta_k(i) = bk(i);
   beta_k(i) = sqrt(beta_k(i));
 endfor

 j = diag(alpha_k) + diag(beta_k, -1) + diag(beta_k, 1);
 retval = j;
endfunction
