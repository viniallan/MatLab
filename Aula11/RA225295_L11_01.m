function [t,y] = RA225295_L11_01()
    f=@(t,y) (2-2*t*y)/(t.^2+1);
    t=[0 1];
    y0=1;
    
    [t,y]= ode45(f,t,y0);
    
    %grafico com a solucao analitica
    plot(t,y);
end 