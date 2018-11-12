% Function that performs Grams-Schmidt on a Matrix 'A' 
% and returns a matrix 'Q' 
%
% Function provided by TA in class
%
% Author: Judson James
% Date: 11/05/2018
% Input: Matrix A
% Output: Matrix Q
% Call Functions: dot, norm, size, det

function Q =gramschmit(A)
  if size(A,1) ~= size(A,2) || det(A) == 0
    disp('Not a good input')
    return
  end

  n = size(A,1);
  
  Q = A;
  for i = 1:n
    for j = 1:i-1
      Q(:,i) = Q(:,i) - dot(Q(:,i),Q(:,j))/dot(Q(:,j),Q(:,j))*Q(:,j);
    end
  end
  for i = 1:n
    Q(:,i) = Q(:,i)/norm(Q(:,i));
  end
end
