function [v_206, a_206] = RA225295_L10_03()
  t=[200 202 204 206 208 210];
  theta=[0.75 0.72 0.70 0.68 0.67 0.66];
  r=[5120 5370 5560 5800 6030 6240];
   
  dr=gradient(r,t);
  dtheta=gradient(theta,t);
  
  dr2=gradient(dr,t);
  dtheta2=gradient(dtheta,t);
  
  v_206=[dr(4) r(4)*dtheta(4)].';
  
  a_206=[((dr2(4))-r(4)*((dtheta(4))^2)) ((r(4)*(dtheta2(4)))+(2*dr(4)*dtheta(4)))].';
end