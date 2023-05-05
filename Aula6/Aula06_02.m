clc;clear;close all force;

%faremos superficies no grafico

x = -10:0.1:10;
y = -10:0.1:10;
[X,Y]=meshgrid(x,y)
[X,Y]=ndgrid(x,y)

Z=(X-3).^2+(Y-3).^2
figure;
surf(X,Y,Z);
shading interp;
colorbar;
xlabel('X');
ylabel('Y');
zlabel('Z');

%fminsearch funcao para busca deminimo em multiplas variaveis

f=@(x) (x(1)-3).^2 +(x(2)-3).^2;
[x,fx]=fminsearch(f,[1 1]')
hold on;
plot3(x(1),x(2),fx,'o','r');