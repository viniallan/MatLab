clc;clear;close all force;

A = [ 1 1
    4 -2];
[V,D] = eig(A);
if(det(V)~=0)
    disp('os autovetores sao LI')
    disp('portanto,diagonalizam A')
end
P=V;
P\A*P;

y0=[1;6];
u0=P\y0;
lambda = diag(D);
u = @(t) u0.*exp(lambda*t);
y = @(t) P*u(t); %sol procurada

tspan = [0 2];
f= @(t,y) A*y;
[T,Y] = ode45(f,tspan,y0);
figure
plot(T,y(T.'),T,Y,'o');