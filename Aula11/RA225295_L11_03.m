function [t,y] = RA225295_L11_03()
    f=@(t,y) (y.^2+y)/(t);
    t=[1 3];
    y1=-2;
    
    [t,y]= ode45(f,t,y1);
    
    %grafico com a solucao analitica
    plot(t,y);
end 