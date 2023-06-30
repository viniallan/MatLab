function [m,rho_avg] = RA225295_L10_01()
  r=[0 1100 1500 2450 3400 3630 4500 5380 6060 6280 6380];
  rho=[13 12.4 12 11.2 9.7 5.7 5.2 4.7 3.6 3.4 3];
  r_SI=1000.*r;
  rho_SI=1000.*rho;
%   plot(r_SI,rho_SI,'or');hold on;

  rho_f=@(x) interp1(r_SI,rho_SI,x,'spline');
  
  int=@(r) rho_f(r).*r.*r;
  
  m=4*pi*integral(int,0,r_SI(end));
  V=4*pi*(r_SI(end)^3)/3;
  rho_avg=m/V;
end