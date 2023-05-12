clc;clear;close all force;

p=[-4 8]; %p(x)=-4x+8
s=[1 6 8];%s(x)=x2+6x+8

%(a) fazer grafico dos polinimos

figure;
x=-5:0.1:3;
plot(x,polyval(p,x),x,polyval(s,x));
legend('p(x)','s(x)','location','best');

%(B) raiz dos polinomios

xp=roots(p);
xs=roots(s);

roots([1 0 0 -1]);%raizes complexas
%poly

%produto de polinomios
t=conv(p,s);

%(D) divisao de polinomioos

[q,r]=deconv(s,p);%onde q eh o cociente e r eh o resto

conv(p,q)+r; %retorna o polinomio

%(E) expansoes em fracoes parciais

[r,p,k] = residue(p,s)  %devolve resto, polo e raiz
[N,D]=residue(r,p,k)    %devolve Numerador e donimador das fracoes