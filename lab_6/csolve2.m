% Judson James
% MATH 344L 002
% Lab 06
%
% This function is used to use the pivot, free, and R variables
% from the previous assignment, then use them to solve for the
% xp and xs variables needed for this assignment
function csolve2(A,b)
    % Utilizing the output from Lab 05 to build onto this lab
    % The print statements will carry over as well
    [R, pivot, free] = csolve(A);
    
    % We get the row/column sizes for the A matrix and b column vector
    [rows_a, cols_a] = size(A)
    [rows_b, cols_b] = size(b)
    
    if cols_b ~= 1
        disp("The 'b' is not a column vector.")
        
    else
    % Objective 1
    xp = zeros(cols_a, 1);
    pA = A(:, pivot);
    tempa = pA\b;
    xp(pivot) = tempa;
    
    
    % Objective 2
    xs = zeros(cols_a, length(free));
    for i=1:length(free)
        tempb = b - A(:, free(i));
        xs(pivot, i) = pA \ tempb;
        xs(free(i), i) = 1;
    end
    
    disp("The particular solution is:")
    xp
    disp("The special solutions are:")
    xs
    end
end