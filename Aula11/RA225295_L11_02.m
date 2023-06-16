function [t,y] = RA225295_L11_02()
    f=@(t,y) (y.^2)/(1+t);
    t=[1 2];
    y1=-1/(log(2));
    
    [t,y]= ode45(f,t,y1);
    
    %grafico com a solucao analitica
    plot(t,y);
end 