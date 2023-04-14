clc;clear;close all force;

A=[2 -6 -1; -3 -1 7;-8 1 -2]
B=[-38 -34 -20].';
x=A\B

rref([A B])