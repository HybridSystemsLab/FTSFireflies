function xplus = g(x)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matlab M-file                Author: Yuchun Li
%
% Project: Simulation of a hybrid system
%
% Name: g.m
%
% Description: Jump map
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% parameters
epsilon = 0.1;  % augment ratio of a timer
varepsilon = 1; % timer threhold

% states
x1   = x(1); 
x2   = x(2); 

% jump map
x1plus = x1;
x2plus = x2;

% jump map case: both of two fireflies hit the threhold
if x1 >= varepsilon && x2 >= varepsilon
    x1plus = 0;
    x2plus = 0;
end

% jump map case: firefly one hits the threhold but not firefly two 
if x1 >= varepsilon && x2 < varepsilon
    x1plus = 0;
    if (1 + epsilon) * x2 >= varepsilon
        x2plus = 0;
    else
        x2plus = (1 + epsilon) * x2;
    end
end

% jump map case: firefly two hits the threhold but not firefly one
if x1 < varepsilon && x2 >= varepsilon
    x2plus = 0;
    if (1 + epsilon) * x1 >= varepsilon
        x1plus = 0;
    else
        x1plus = (1 + epsilon) * x1;
    end
end


xplus = [x1plus; x2plus];   
end