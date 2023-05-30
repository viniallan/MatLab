function [A0, A1, B1, C1, dia_max] = RA225295_L09_01() 
   t=[15 45 75 105 135 165 195 225 255 285 315 345];
   y=[3.4 4.7 8.5 11.7 16 18.7 20.5 19.7 17.1 12.7 7.7 5.1];
   plot(t,y,'or'); hold on;
   for i=1:length(t)
     E(i)=e;
   end
   
   for w0=1/10:0.01:1/5
        Z = [ones(length(t),1) cos(w0*t).' sin(w0*t).']
        a=Z\(y.')
        y_ajuste = @(t) a(1) + a(2)*cos(w0*t) + a(3)*sin(w0*t)+2.718282;
        fplot(y_ajuste,[min(t) max(t)],'--','linewidth',2);
   end


end

