clc;clear;close all force;

f=@(t,y) y.^2-y.^3;
delta=0.00001;
y0=delta;
tspam = [0 (2/delta)];
ode45(f,tspam,y0);
figure
ode23s(f,tspam,y0);

