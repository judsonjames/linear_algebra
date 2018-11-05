function lab_7(A)
    % Utilizing the output from Lab 05 to build onto this lab
    % The print statements will carry over as well
    [R, pivot, free] = csolve(A);
    r = rank(A);
    
    rowbasis = R(1:r,:)
    
    R = rref(A');
    r = rank(A');
    columnbasis_a = R(1:r,:)
    columnbasis_b = A(:,pivot)
    
    null_space_dimension = size(A,2) - rank(A)
    null_space = null(A,'r')
    
    left_null_space_dimension = size(A,1) - rank(A)
    left_null_space = null(A', 'r')'
end