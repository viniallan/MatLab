clc; clear; close all force;

load ex47

I = trapz(x,y)
I_exato = log(1.5^2-4)-log(1^2-4)