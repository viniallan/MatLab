clc;clear;close all force;
L=500;
E=50000;
I=35000;
w0=2.75;
Deltax=10;
x=0:0.1:L;
%grafico 1
a=((w0)/(120*E*I*L))*((-x.^(5))+2*(L^2)*(x.^(3))-(L^4)*x);
b=((w0)/(120*E*I*L))*((-5*x.^(4))+6*(L^2)*(x.^(2))-(L^4));
figure(1)
subplot(2,1,1);
plot(x,a);
title('Deflexão, y(x)');
xlabel('x');
ylabel('Deflexão, y(x)');
legend('Deflexão');
subplot(2,1,2);
plot(x,b);
title('Inclinação, \theta (x)');
xlabel('x');
ylabel('Inclinação,\theta (x)');
legend('Inclinação');

%grafico 2
c=((w0)/(120*L))*((-20*x.^(3))+12*(L^2)*(x));
d=((w0)/(120*L))*((-60*x.^(2))+12*(L^2));
e=((-w0)/(120*L))*((-120*x));
figure(2)
subplot(3,1,1);
plot(x,c);
title('Momento Fletor, M(x)');
xlabel('x');
ylabel('Momento Fletor, M(x)');
legend('Momento Fletor');
subplot(3,1,2);
plot(x,d);
title('Esforço cortante,V(x)');
xlabel('x');
ylabel('Esforço cortante,V(x)');
legend('Esforço cortante');
subplot(3,1,3);
plot(x,e);
title('Carregamento,w(x)');
xlabel('x');
ylabel('Carregamento,w(x)');
legend('Carregamento');
