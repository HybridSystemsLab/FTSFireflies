function [value] = C(x) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matlab M-file                Author: Yuchun Li
%
% Project: Simulation of a hybrid system
%
% Name: C.m
%
% Description: Flow set
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% parameter 
varepsilon = 1;

% states
x1   = x(1);
x2   = x(2);

if (x1 <= varepsilon) && (x2 <= varepsilon) % flow condition 
    value = 1;  % report flow 
else
    value = 0;  % do not report flow
end
