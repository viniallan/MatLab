clc;clear;close all force;

x=0:1e-5:1.5;
y1=tan(x)-1;
y2=asin(cos(x)/3);

figure;
plot(x,y1,x,y2); %grafico para chute inicial

[x,fx]=fsolve(@(x) fun(x),[0.8816;0.2136])