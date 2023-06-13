function [m,rho_avg] = RA225295_L10_01()
  r=[0 1100 1500 2450 3400 3630 4500 5380 6060 6280 6380];
  rho=[13 12.4 12 11.2 9.7 5.7 5.2 4.7 3.6 3.4 3];
  r_SI=1000.*r
  rho_SI=1000.*rho

  n=10;
  p=polyfit(r_SI,rho_SI,n);
  
  
  % Coeficientes do polinômio ajustado
  disp(p);

  % Criação da função anônima
  f = @(x) polyval(p, x);
  fplot(f,[0 r_SI(length(r_SI-1))]); 
  f2=@(x) f(x).*x.*x;
  f3=4*pi*integral(f2,0,r_SI(length(r_SI-1)))
end