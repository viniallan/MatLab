clc;clear;close all force;

 f= @(t,y) y;
 t0 = 0;
 tf = 4;
 h = 0.01;
 y0=1;
 
[t,y]=euler(f,t0,tf,y0,h);

figure
yyaxis left
plot(t,y,'o')
hold on;
fplot(@(t) exp(t),[t0 tf],'k')
xlabel('t');ylabel('y(t)');
yyaxis right
plot(t,y-exp(t));

[t,y]=ode45(f,[t0 tf],y0);
plot(t,y,'sr');