clc;clear;close all force;

load ex37

%aproximacao linear
p=polyfit(x(4:5),fx(4:5),1);
y=polyval(p,3.4)

%aproximacao quadratica
p=polyfit(x(3:5),fx(3:5),2);
y2=polyval(p,3.4);

figure;
plot(x,fx,'*b');hold on;
xq=3.4;
plot(xq,interp1(x,fx,xq,'linear'),'x');
plot(xq,interp1(x,fx,xq,'spline'),'d');