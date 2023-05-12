clc;clear;close all force;

x=rand(1000,1);
xn=randn(1000,1);
figure;
histogram(x);
title('numero aleatorio');
figure;
histogram(xn);
title('distribuicao normal');

%%
%vamos fazer 4/N*sum(func esta no circulo ou nao)
N=10000;
% x=rand(N,1);
% y=rand(N,1);
x=rand(N,2);

N_circle=sum(x(:,1).^2+x(:,2).^2 <= 1^2);

pie=N_circle/N*4;

figure;
t=linspace(0,pi/2,1000);
xc=cos(t);yc=sin(t);
f=@(x,y) x.^2 +y.^2-1;
% plot(xc,yc,'k');
hold on;
fimplicit(f,[0 1 0 1],'k'); %plota o ciruclo
ind= x(:,1).^2+x(:,2).^2 <= 1^2;
plot(x(ind,1),x(ind,2),'ob');
plot(x(~ind,1),x(~ind,2),'or');


