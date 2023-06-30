clc;clear;close all force;

m=3; %kg
M=2; %kg
c=10;
ct=4;
k =1e3;
g=9.81;
l=1.4;

Mt=[(M+m) 0;0 m*1^2];
Ct=[c 0 ; 0 ct];
Kt=[k 0; 0 m*g*l];

A=[zeros(2) eye(2)
  -Mt\Kt -Mt\Ct];
[V,D]=eig(A)
    