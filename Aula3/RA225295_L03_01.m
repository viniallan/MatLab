function [d] = RA225295_L03_01()
   %Essa funcao retorna o valor da distancia d usando a formula de conservacao de energia
   
   k1=40e3; %g/s2
   k2=40;   %g/s^2m^0.5
   m=95;    %g
   g=9.81;  %m/s^2
   h=0.43;  %m
   
   %F=@(d) -(k1*d)+(k2*d^(3/2));
   
   f=@(d) (2*k2*d.^(5/2))/(5)+(k1/2)*(d.^(2))-m*g*d-m*g*h;
   
   d=fzero(f,[0 2]);
end
