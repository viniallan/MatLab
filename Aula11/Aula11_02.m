clc;clear; close all force;

%% 1

f=@(t,y) exp(t-y);
y0=1;
tspam = [0 1];
[t,y]=ode45(f,tspam,y0);
figure
plot(t,y,'ok');
hold on;
plot(t,log(exp(t)-1+exp(1)));
%%
%%2
f=@(t,y) (t^(-2))*(sin(2*t)-2*t*y);
y0=2;
tspam = [1 2];
[t,y]=ode45(f,tspam,y0);
figure
plot(t,y,'ok');
hold on;
plot(t,(-cos(2*t)+4+cos(2))/(2*t.^2));
