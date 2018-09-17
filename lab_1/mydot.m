% Judson James
% MATH 344L
% Lab Assignment 1 MyDot
function d = mydot(u, v)
    m = length(u);  % length(u) returns the number of elements of u
    d = 0;          % initialize d
    
    % Goes through each element in u and v and produces the dot product
    for i = 1 : 1 : m
        d = d + (u(i) * v(i));
    end
end
