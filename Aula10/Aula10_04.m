clc;clear;close all force;


% aproximando  a integral com conjuntos de pontos ja obtidos


load ex47;

I=trapz(x,y)
I_exato=log(1.5^2-4)-log(1^2-4)