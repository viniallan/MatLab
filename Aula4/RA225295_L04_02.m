function [x] = RA225295_L04_02()
  %%
  k=5;  %N/mm
  W=50; %N
  k1=k;
  k2=2*k
  k3=k;
  k4=k;
  k5=2*k;
  W1=2*W;
  W2=W;
  W3=2*W;
  A=[(k1+k2+k3+k4) (-k3) (-k5)
    (-k3) (k3+k4) (-k4)
    (-k5) (-k4) (k4+k5)]
  B=[W1;W2;W3]
  x=A\B
end