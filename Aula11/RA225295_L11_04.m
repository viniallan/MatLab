function [t,y] = RA225295_L11_04()
    f=@(t,y) -t*y+(4*t)/(y);
    t=[0 1];
    y0=1;
    
    [t,y]= ode45(f,t,y0);
    
    %grafico com a solucao analitica
    plot(t,y);
    y2=integral(@(x) -x,0,1)+4*integral(@(x) x,0,1);
    figure
    plot(t,y2);
    
    %{
    Y(s)/s=-tY(s)+4*t/Y(s)
    %}
end 