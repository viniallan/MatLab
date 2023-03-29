clc;clear;close all force;

x=0:0.01:2*pi; %vetor com passo 0.01
y=sin(x);      %seno de x
figure;
plot(x,y);     %plot 

%% 
%nova secao
y=-4:1e-3:4; % vetor com passo 0.001
x1=y.^2;      % precisamos colocar o ponto para organizar as matrizes
x2=y.^2/2;
figure;   %separa em figures
plot(x1,y,x2,y);%plotar   
xlabel('legenda eixo x');
ylabel('legenda eixo y');
legend('y^2','y^2/2','location','best');
grid on;
title('(a)figura da parabola');
