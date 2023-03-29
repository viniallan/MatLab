clc;clear;close all force;
%a=2;b=3;save('input.mat');
%load input.mat %carrega arquivo no sistema
s=load('input.mat');    %carrega arquivo na variavel
%s.b
%s.a
t=linspace(0,2*pi,100);
x=s.a.*cos(t);
y=s.b.*sin(t);
figure;
plot(x,y);
plot(x,y,'o');
plot(x,y,':');
plot(x,y,'--x');
plot(x,y,'-.sg');
grid on;
xlabel('x');
ylabel('y');
axis equal;

t = linspace(0, 6*pi, 100);
st = sin(t);
ct = cos(t);
figure;
plot3(st,ct,t);

figure
subplot(2,1,1);
plot(x,y,'color',[0.5 0 0.5]);
axis equal
subplot(2,1,2);
plot(x,y,'linewidth',2,'color',[0.5 1 1]);

