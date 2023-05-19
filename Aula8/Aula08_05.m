clc;clear;close all force;

load ex39

x=0:1;
y=0:1;
[X,Y] = meshgrid(x,y)

z(1,1) = 1;
z(2,1) = -3;
z(1,2) = 5;
z(2,2) = -11;
z_int=interp2(X,Y,z,1/4,1/2);

surf(X,Y,z);hold on;
plot3(1/4,1/2,z_int,'Ok');

x=0:0.1:1;
y=0:0.1:1;
[XX,YY] = meshgrid(x,y);
ZZ=interp2(X,Y,z,XX,YY)
figure
surf(XX,YY,ZZ); hold on;
plot3(1/4,1/2,z_int,'or');