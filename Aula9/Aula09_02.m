clc;clear;close all force;

load ex41;

figure;
plot(t,y,'or');

w0=3;

Z=[ones(length(t),1) cos(w0*t).' sin(w0*t).'];
a=Z\(y.');
y_ajuste=@(t) a(1) +a(2)*cos(w0*t)+a(3)*sin(w0*t);
hold on;
fplot(y_ajuste,[min(t) max(t)],'--','linewidth',2);

ya=@(t) 2 + cos(3*t) + sin(3*t);
t=0:0.23:2.10;
y_=round(ya(t) + 0.1*rand(size(t))-0.05,2);

plot(t,y_,'*')
xlabel('x')
ylabel('y')
title('$a_0 + a_1\cos(\omega_o t+a_2\sin(\omega_0 t))$',...
    'interpreter','latex','fontsize',14);
legend('data','ajuste','rand','location','best')

plot(rand,rand,'s','markersize',15,'displayname','outroponto')

