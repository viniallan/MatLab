clc;clear;close all force;


%x sao vetores na funcao anonima
%fminbnd unidimensional sem restricoes

%fminsearch multidimensional sem restricao

%fmincon com restricao

%faremos superficies no grafico

x = -10:0.1:10;
y = -10:0.1:10;
[X,Y]=meshgrid(x,y);

Z=(X-3).^2+(Y-3).^2;
figure;
surf(X,Y,Z);
shading interp;
xlabel('X');
ylabel('Y');
zlabel('Z');

x = -6:0.5:10;
z = 0:5:300;
[X,Z] = meshgrid(x,z);
Y=4-X;
hold on;
surf(X,Y,Z);

f= @(x) (x(1)-3).^2 +(x(2)-3).^2; %mesma funcao
A=[1 1];
b=[4];

x0=[0 0];
[x_min,fval] = fmincon(f,x0,A,b);
plot3(x_min(1),x_min(2),fval,'o','r');