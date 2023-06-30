clc;clear;close all force;

%%
A=[-1 3
    2 0];
p=poly(A)
lambda = roots(p)

% roots(poly(A))
lambda2 = eig(A)

[V,D] = eig(A)

vecnorm(V)

x1=[3;-2];
x1=x1/norm(x1)

det(V) %se determinante diferente de 0, vetores sao linearente independente

%%
A=[2 -3 6
    0 3 -4
    0 2 -3];
[V,D]=eig(A)

det(V)

%%

A=[-2 -1
    5 2];
[V,D]=eig(A)

det(V)
