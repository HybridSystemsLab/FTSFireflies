%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Matlab M-file                Author: Yuchun Li
%
% Project: Simulation of two interacted fireflies
%
% Name: run.m
%
% Description: run script
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all 

%%%%%%%% INITIALIZE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% initial conditions                                                  
y0 = [0 0.3]'; 

% simulation horizon
TSPAN = [0 10];
JSPAN = [0 200];

% rule for jumps
% rule = 1 -> priority for jumps
% rule = 2 -> priority for flows
rule = 1;

options = odeset('RelTol',1e-1,'MaxStep',1e-2);

% simulate
[t y j] = hybridsolver(@f,@g,@C,@D,y0,TSPAN,JSPAN,rule);


% plot solution
figure 
set(gca,'FontSize',30)
hold on
plotflows(t,j,y(:,1),'k')
set(gca,'FontSize',30)
plotflows(t,j,y(:,2),'b')
grid on

figure
set(gca,'FontSize',30)
plotflows(t,j,abs(y(:,1)-y(:,2)),'b')
grid on 
axis([0 10 -0.1 1.1])