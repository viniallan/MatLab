function [L] = RA225295_L10_02()
  L_interno=@(x) sqrt(1+(cos(x)).^2);
  a=0;
  b=48;
  L=integral(L_interno,a,b);
end