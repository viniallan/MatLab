clc;clear;close all force;

f= @(x) 4*x(1).^2+3*x(2).^2-5*x(1)*x(2)-8*x(1);

x0=[0  4].';

A=[];%restricoes
b=[];%restricoes
Aeq=[1 1];%restricoes
beq=[4];%restricoes
[x,fx] = fmincon(f,x0,A,b,Aeq,beq)