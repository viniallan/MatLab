clc;clear;close all force;
tic
N=1e7; %dado de entrada

soma = 0;
sinal = -1;

for n=0:N
%     if mod(n,1000)==0
%         n
%     end
% 	soma=soma+((-1)^n)/(2*n+1);
    sinal= -sinal;
    soma=soma+sinal/(2*n+1);
end
pie=4*soma;
%pi;
%abs(pie-pi);
%format : imprime com 4
format long %imprime com 15 casas decimais
[pie pi abs(pie-pi)]
toc