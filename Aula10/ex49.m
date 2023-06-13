clc; clear; close all force;

xa = 0;
xb = pi/4;
ya = @(x) sin(x);
yb = @(x) cos(x);

f = @(x,y) 2*y.*sin(x) + cos(x).^2;
I = integral2(f,xa,xb,ya,yb)
I_exato = (5*sqrt(2)-4)/6
I-I_exato