% Judson James
% MATH 344L 002
% Lab 05
%
% This function takes in a matrix 'A', creates a RRE form of A, and
% finds the pivot, rank, and remaining free vector spaces.
%
% Input: A --> Matrix
% Output: Description of the rank, pivot, and free variables
%
% NOTE:
% This function has been modified to return the pivot and free
% vectors in the 
function [R, pivot, free] = csolve(A)
    % Use size to gather both rows and columns
    [rows, cols] = size(A);
    pivot = [];
    free = (1:cols);
    R = rref(A); % Given in class
    
    % Dynamically allocate pivot vector using the RRE
    for i=1:rows-1
        for j=1:cols-1
            if(R(i,j) == 1)
                pivot = [pivot,j];
                break;
            end
        end
    end
    
    % Remove any elements from free that are in pivot
    for i=1:length(pivot)
        if pivot(i) == free(i)
            free(i) = [];
        end
    end
    
    % Properly format the output to match the assignment
    fprintf("\nThe rank of the coefficient matrix is %d", length(pivot))
    fprintf("\nPivot variables: ")
    for i=1:length(pivot)
        fprintf(pivot(i) + " ")
    end
    fprintf("\nFree variables: ")
    for i=1:length(free)
        fprintf(free(i) + " ")
    end
    fprintf("\n\n")
end