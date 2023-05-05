clc;clear;close all force;

f =@(x,y) sin(0.4*pi*x)./x + exp(-y/8).*cos(0.6*pi*y);
figure;
fsurf(f,[0 10 0 10],'facecolor','y',...
    'facealpha',0.5,'meshdensity',20);
xlabel('X');
ylabel('Y'); 

hold on;%plotando o plano 2pi
fimplicit3(@(x,y,z) x-2*pi,[0 10 0 10 -1 2],...
    'facecolor','b','facealpha',0.4,'meshdensity',5);
%plotando o plano 3pi
fimplicit3(@(x,y,z) x-3*pi,[0 10 0 10 -1 2],...
    'facecolor','b','facealpha',0.4,'meshdensity',5);
%plotando y>=pi
fimplicit3(@(x,y,z) y-pi,[0 10 0 10 -1 2],...
    'facecolor','r','facealpha',0.4,'meshdensity',5);
%plotando <=2pi
fimplicit3(@(x,y,z) y-2*pi,[0 10 0 10 -1 2],...
    'facecolor','r','facealpha',0.4,'meshdensity',5);

f = @(x) sin(0.4*pi*x(1))./x(1) + ...
    exp(-x(2)/8).*cos(0.6*pi*x(2));

x0=[1;1];
[x,fx]=fmincon(f,x0,[],[],[],[],...
    [2*pi pi],[3*pi 2*pi]);
plot3(x(1),x(2),fx,'or');

