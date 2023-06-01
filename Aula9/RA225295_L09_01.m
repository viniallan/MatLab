function [A0, A1, B1, C1, dia_max] = RA225295_L09_01() 
   t=[15 45 75 105 135 165 195 225 255 285 315 345];
   y=[3.4 4.7 8.5 11.7 16 18.7 20.5 19.7 17.1 12.7 7.7 5.1];
   plot(t,y,'or');hold on;
 
   w0=(2*pi/365);

    Z = [ones(length(t),1) cos(w0*t).' sin(w0*t).'];
    a=Z\((y-2.718282).');
    y_ajuste = @(t) a(1) + a(2)*cos(w0*t) + a(3)*sin(w0*t)+2.718282;
    fplot(y_ajuste,[min(t) max(t)],'--','linewidth',2);

   A0=a(1);
   A1=a(2);
   B1=a(3);
   C1=sqrt(a(2)^2+a(3)^2);
   y_ajuste_2 = @(t) -1*y_ajuste(t);
   fplot(y_ajuste_2,[min(t) max(t)],'--','linewidth',2);
   [x,fx]=fminbnd(y_ajuste_2,190,210);
   dia_max=x;
end

