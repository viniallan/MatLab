clc;clear;close all force;

load data.mat

histogram(X)

title('Histogram')

figure;
%especificar as quantidades de intervalos
subplot(3,1,1); histogram(X,3);
subplot(3,1,2); histogram(X,5);
subplot(3,1,3); histogram(X,7);

figure;
%espeficiar os intervalos
xbin=0.8:0.2:2.4;
subplot(2,1,1);histogram(X,xbin);
xbin=[0.8 0.9 1.2 1.5 2 2.4]
subplot(2,1,2);histogram(X,xbin);