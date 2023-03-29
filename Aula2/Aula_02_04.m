clc;clear;close all force;

p=@(x) x.^3-4*x %funcao em ponteiro sem arquivo

% x = -3:e-3:3;
% x=linspace(-3,3,1000);
% y=p(x);
% plot(x,y)
fplot(p,[-3 3])

xo = [0 2 -2 sqrt(4/3) -sqrt(4/3)];
yo = p(xo);
hold on
plot(xo,yo,'o')
hold off

%%
a=1;
b=4;
p2=@(x) a*x.^3-b*xo
figure
fplot(p2,[-3 3])