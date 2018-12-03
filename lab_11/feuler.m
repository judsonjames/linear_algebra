% Judson James
% MATH 344L 002
% Lab 11
%
% Function: feuler
% Purpose: finding and graphing the IVP of the differential equation
% '(2 + 2t)e^t
% 
% Parameters: N, start point, end point, u(0)
function feuler(N, tinitial, tend, uinitial)
    h = (tend - tinitial)/N;
    t = tinitial:h:tend;
    u = zeros(1,N+1);
    u(1) = uinitial;
    
    for i = 1:N
        u(i+1) = u(i) + h*f(t(i));
    end
    
    u = uexact(t);
    
    plot(t, u, 'r-o', t, u, 'b-');
    legend('numerical solution', 'true solution');
    title(['N-', int2str(N)]);
end

function ft = f(t)
    ft = (2+2*t).*exp(t);
end

function u = uexact(t)
    u = 2*t.*exp(t);
end