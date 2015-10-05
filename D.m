function value= D(x) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matlab M-file                Author: Yuchun Li
%
% Project: Simulation of a hybrid system
%
% Name: D.m
%
% Description: Jump set
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% parameter
varepsilon = 1;

% states 
x1   = x(1);
x2   = x(2);

if (x1 >= varepsilon) || (x2 >= varepsilon) % jump condition
    value = 1;  % report jump
else
    value = 0;  % do not report jump
end