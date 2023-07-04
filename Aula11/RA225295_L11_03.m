function [t,y] = RA225295_L11_03()
    f=@(t,y) (y.^2+y)/(t);
    t=[1 3];
    y1=-2;
    
    [t,y]= ode45(f,t,y1);
    
    %solucao analitica
    %{
    dy/dt = (y^2 + y)/(t)
    dy/(y^2 + y) = dt/t
    dy/(y^2 + y) = dt
    ∫(dy/(y^2 + y)) = ∫dt
    ∫(1/u) du = ∫dt
    ln|u| = t + C
    ln|y^2 + y| = t + C
    y^2 + y = e^(t + C)
    condição inicial y(1) = -2:
    (-2)^2 + (-2) = e^(1 + C)
    4 - 2 = e^(1 + C)
    2 = e^(1 + C)
    C = ln(2) - 1
    Substituindo o valor de C 
    y^2 + y = e^t * e^(ln(2) - 1)
    y^2 + y = 2e^t * e^(-1)
    y^2 + y = 2e^t * 1/e
    y^2 + y = 2e^(t-1)
    %}
end 