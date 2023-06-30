clc;clear;close all force;


A=[0 0 -2
    1 2 1
    1 0 3];

[V,D]=eig(A)
det(D)

P=V
D
P\A*P

%%
A=[1 0 0
    1 2 0
    -3 5 2];
[V,D]=eig(A)
det(D)

P=V
D
P\A*P
