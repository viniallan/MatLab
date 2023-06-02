clc;clear;close all force
%utilizar as diferenças central para caso de h pequeno para diminuir o
%erro.

load ex44;

%f'(1.05) = dif avnçada
df(1) = (y(2)-y(1))/(x(2)-x(1));
h=x(2)-x(1);
%f'(1.15)= dif central
df(3) =  (y(4)-y(2))/2/h;

%f'(1.25) =  dif atrasadas
df(5) = (y(5)-y(4))/h;

i=[2 4];
df(i)= (y(i+1)-y(i-1))/(2*h);

df_exato=@(x) 2*sec(2*x).^2;
figure;
fplot(df_exato,[min(x) max(x)]);
hold on;
plot(x,df,'o');

i=3;
d2f=(y(i+1)-2*y(i)+y(i-1))/(h^2);
d2f_ex=@(x) 8*tan(2*x).*sec(2*x).^2;
[d2f d2f-d2f_ex(x(i))]