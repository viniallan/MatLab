clc;clear;close all force;

load ex36.mat;

figure;
plot(x,y,'*');
X=[(x.') ones(length(x),1)];
Y=log(y./x).';

b=X\Y
alpha=exp(b(2));
beta=b(1);
hold on;
fplot(@(x) alpha*x.*exp(beta*x),[min(x) max(x)],':',...
    'linewidth',2);

b=polyfit(x,log(y./x),1)