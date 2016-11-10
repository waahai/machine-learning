function [shuffered_X shuffered_Y] = shufferExamples(X, y, count)
shuffered_X = X;
shuffered_y = y;
m = size(X, 1);
loops = count;

for i=1:loops
  r1 = randi(m);
  r2 = randi(m);
  if (r1 == r2)
    loops = loops + 1;
  else
    temp = shuffered_X(r1, :);
    shuffered_X(r1, :) = shuffered_X(r2, :);
    shuffered_X(r2, :) = temp;
    temp = shuffered_y(r1, :);
    shuffered_y(r1, :) = shuffered_y(r2, :);
    shuffered_y(r2, :) = temp;
  endif
end

end
