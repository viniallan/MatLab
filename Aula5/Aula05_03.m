clc;clear;close all force;

f = @(x) [(3*x(1)-cos(x(2)*x(3))-1/2)
         x(1)^2-81*(x(2)-0.1)^2+sin(x(3))+1.06
         exp(-x(1)*x(2))+20*x(3)-(3-10*pi)/3];

x0=[0.1 0.1 -0.1].'; %estimativa inicial

x =  fsolve(f,x0) %resolve usando a funcao do matlab

opt= optimset('Display', 'iter','TolFun',1e-15);
[x,fx] = fsolve(f,x0,opt)