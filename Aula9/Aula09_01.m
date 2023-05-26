clc;clear;close all force;

load ex40

figure;
plot(x,y,'o');hold on;

f=@(x,a) a(1)*(1-exp(-a(2)*x));
res=@(x,a,y) sum((y-f(x,a)).^2);

a=fminsearch(@(a) res(x,a,y),[1;1])
fplot(@(x) f(x,a),[x(1) x(end)],':','linewidth',2);

