clc;clear;close all force;

load ex38

plot(y,g);
gy=interp1(y,g,55000);
plot(55000,gy,'O');hold on;
yg=interp1(g,y,9.65) %interpolcao inversa
plot(yg,9.65,'xk');

%busca de raizes
p=polyfit(y(2:4),g(2:4),2);
yprocurado = fzero(@(y) (polyval(p,y)-9.65),yg);