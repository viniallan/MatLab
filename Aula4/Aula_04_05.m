clc;clear;close all force;

A=[2 -6 -1; -3 -1 7;-8 1 -2]
B=[-38;-34;-20];
[L,U]=lu(A);
L*U
y=L\B
x=U\y

%COM PIVOTIAMENTO

[L,U,P]=lu(A)

y=L\(P*B);
x=U\y