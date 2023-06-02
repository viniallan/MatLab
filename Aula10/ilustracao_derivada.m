clc;clear;close all force;

f =@(x) exp(x);
figure; hold on;
fplot(f,[0 2]); plot(1,f(1),'o');

x=1;
df = @(x) exp(x);

h  = logspace(-3,-1,100); %vou gerar 100 pontos entre 10^-3 a 10^-1

dy_a=(f(x+h)-f(x))./h;
dy_c=(f(x+h)-f(x-h))./(2*h);    %dif centrais
figure
semilogx(h,dy_a-df(x),h,dy_c-df(x))
legend('dif avancada','dif central','location','best')

fprintf('%-16s %-16s\n','h','error')
for h=10.^(-(1:16))
    dy_c = (f(x+h)-f(x-h))./(2*h);
    err= abs(dy_c-df(x));
    fprintf('%16.15f %16.15g\n',h,err);
end