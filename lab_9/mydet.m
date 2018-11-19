% Judson James
% MATH 344L 002
% Lab 9
%
% This function utilizes both recursion and iteration to compute the
% determinent of any nxn matrix.
% 
% Input: a matrix 'A'
% Output: the determinent 'd'
% Calls: size, mydet(recursive)
function d = mydet(A)

    % Dimensions Check
    if size(A, 1) ~= size(A,2)
        disp("Invalid Matrix; Not an nxn Matrix")
        return
    end
    
    % If a 2x2 Matrix, return the determinent
    if size(A,1) == 2
        d = A(1,1)*A(2,2) - A(1,2)*A(2,1);
    
    % Else, Iterate and create submatrices with recursive calls
    else
        for j=1:size(A,1)
            M = A;
            M(1,:) = [];
            M(:,j) = [];

            if j == 1
                d = A(1,j)*((-1)^(1+j)*mydet(M));
            else
                d = d + A(1,j)*((-1)^(1+j)*mydet(M));
            end
        end 
    end
end