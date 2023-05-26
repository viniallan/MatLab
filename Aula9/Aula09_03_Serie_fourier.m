clc;clear;close all force;

%pegar a do professor pq nao consegui fazer tudo

a0=1;
an=@(n) -8/pi^2./(2*n-1).^2;

wn=@(n) (2*n-1)*pi/2;

fx= @(x,n) a0 + sum( an(1:n).*cos(wn(1:n).*x) );

n=[1 2 4 10];
figure; hold on;
x = linspace(-4,4,1e-4);
for j=1:length(n)
    y=zeros(size(x));
    for i=1:length(x)
        y(i)=fx(x(i),n(j)); 
    end
    plot(x,y)
end
