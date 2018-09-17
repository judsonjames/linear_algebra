function A = MyDiagMatrix(n)
    %initialize A
    A = zeros(n,n); %zeros is a command that creates a nxn zero matrix
    for i = 1 : 1 : n
        A(i,i) = 21*i - 10;
    end
end
