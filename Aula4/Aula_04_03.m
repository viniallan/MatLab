clc;clear;close all force;

% figure;
% grid ON
% x_span = [0 500]; %valores de X do grafico
% fplot(@(x) ((120+1.1*x)/10),x_span);
% hold on
% fplot(@(x) ((174+2*x)/17.4),x_span);
% hold off

A=[-1.1 10;-2 17.4];
B=[120;174];
x=A\B

det(A) %determinante da matriz
%por que determinante nao é um bom criteiro?
%para checar o condicionamenrto da matriz?
C=eye(10)*1e-3
det(C)
cond(C) %numero de condicionamento da matrz para inversao
cond(A)
rcond(A) %recipocro do numero de condicionamento
rcond(C)