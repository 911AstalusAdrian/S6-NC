function retval = gauss_elim(A, b)
  % Construct the augmented matrix
  A_aug = [A b];

  % Initialize the permutation vector
  p = 1:size(A,1);

  % Forward elimination step
  for k = 1:size(A,1)-1
      % Find the row with the largest absolute value in the current column
      [~, max_row] = max(abs(A_aug(k:end,k)));
      max_row = max_row + k - 1;

      % Swap the current row with the row with the largest absolute value
      if max_row ~= k
          A_aug([k max_row],:) = A_aug([max_row k],:);
          p([k max_row]) = p([max_row k]);
      end

      % Perform the elimination step for the current column
      for i = k+1:size(A,1)
          factor = A_aug(i,k) / A_aug(k,k);
          A_aug(i,k:end) = A_aug(i,k:end) - factor * A_aug(k,k:end);
      end
  end


  b = A_aug(:, [end]);
  a = A_aug(:, [1 : size(A,1)]);


  retval = backward(a, b, size(A, 1))


endfunction
