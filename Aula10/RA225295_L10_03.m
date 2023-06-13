function [v_206, a_206] = RA225295_L10_03()
  t=[200 202 204 206 208 210];
  theta=[0.75 0.72 0.70 0.68 0.67 0.66];
  r=[5120 5370 5560 5800 6030 6240];
  
  n=3;
  theta_p=polyfit(t,theta,n);
  r_p=polyfit(t,r,n);
  disp(theta_p);
  disp(r_p);
  
   f_theta = @(x) polyval(theta_p, x)
   f_r = @(x) polyval(r_p,x)   
   figure(1);
   fplot(f_theta,[200 210]); 
   figure(2)
   fplot(f_r,[200 210]); 
  
   #sysm x MATLAB
   df_theta=diff(f_theta);
   df_df_theta=diff(df_theta);
   
   df_r=diff(f_r);
   df_df_r=diff(df_r);
   
   v=@(x) df_r(x)*ERRO+r(x)*df_theta(x)*ERRO;
   a=@(x) (df_df_r(x)-r(x)*((df_theta(x))^2))*ERRO+(r(x)*df_df_theta(x)+2*df_r(x)*df_theta(x))*ERRO;
   
   
end