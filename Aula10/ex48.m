clc; clear

f = @(x) exp(3*x).*sin(2*x);
a = 0;
b = pi/4;
I = integral(f,a,b)
I_exato = (2+3*exp(3*pi/4))/13
I-I_exato