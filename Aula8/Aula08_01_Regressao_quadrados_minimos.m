clc;clear;close all force;

load ex35.mat;

figure;

plot(x,y,'o');

a=(x.')\(y.')

hold on;
fplot(@(x) a*x,[min(x) max(x)]);

% b=[x ones(length(x),1)]\y
X=[x' ones(length(x),1)];

b=X\(y');

fplot(@(x) b(1)*x+b(2),[min(x) max(x)])
legend('o pontos','regressao','sla')
