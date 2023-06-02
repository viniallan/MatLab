clc;clear;close all force;

load ex45;
%diff gradient

dy_diff = diff(y)./diff(x);
xm = (x(1:end-1)-x(2:end))/2

h=x(2)-x(1);
dy_grad=gradient(y,h);
dy_grad2=gradient(y)./gradient(x);

df_ex=@(x) (1-x.^2).*sin(x)+3*x.*cos(x);
figure
fplot(df_ex,[min(x) max(x)]);hold on;
legend('exato','diff','grad','grad2');
