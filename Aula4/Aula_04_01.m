clc;clear;close all force;

A = [0 6 -5
    0 4 7
    (1-5) 3 -7]
A= [0 6 -5; 0 4 7; -4 3 -7]
A=[0,6,-5;0,4,7;-4,3,-7]

B=[-50 -30 40]
B=B'
B=[-50 -30 40]'
B=[-50;-30;40]

x=A\B
x=inv(A)*B%NAO FAZER ESSE POR CAUSA DO ARREDONDAMENTO DE INV
norm(A\B-inv(A)*B)

