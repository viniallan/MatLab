clc; clear; close all force;

f = @(x) 1./x;

% item 1
a = 1;
b = 10;
h = (b-a);
I = h/2*(f(a)+f(b))

% item 2
a1 = 1; b1 = 5.5;
a2 = 5.5; b2 = 10;
x0 = a1;  h = (b1-a1);
I1 = h/2*(f(a1)+f(b1)); % f(x0)+f(x0+h);
I2 = h/2*(f(a2)+f(b2));
I = I1+I2

I_exato = log(10)-log(1)

% dividindo em N subintervalos
N = 10;
h = (b-a)/(N-1);
i = 1:N-1;
x = linspace(a,b,N);
I(i) = (f(x(i))+f(x(i+1)))*h/2;
I_approx = sum(I)