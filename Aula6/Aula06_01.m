clc;clear;close all force;
%temos uma funcao f(x)=2sinx-x^2/10
%queremos achar o maximo
%sabemos que a derivada é f'(x)=2cosx-x/5=0

f =@(x) 2*sin(x)-x.^2/10;
df=@(x) 2*cos(x)-x/5;

figure;
subplot(211)
fplot(f,[-10 10]); title('f(x)');
subplot(212)
fplot(df,[-10 10]); title('df(x)');

x=fzero(df,1.5);
subplot(211);hold on;
plot(x,f(x),'o');


%otimizacao minimizacao unidimensional
%help fminbnd

x_min=fminbnd(@(x) -f(x),-10,10);
plot(x_min, f(x_min),'+');