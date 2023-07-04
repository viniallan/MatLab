function [t,y] = RA225295_L11_02()
    f=@(t,y) (y.^2)/(1+t);
    t=[1 2];
    y1=-1/(log(2));
    
    [t,y]= ode45(f,t,y1);
    %solucao analitica
    %{
    dy/dt=(y^2)/(1+t)
    dy/(y^2) = dt/(1+t)
    ∫(1/y^2) dy = ∫(1/(1+t)) dt
    1/y = -ln(1+t) - C
    1/y(1) = -ln(1+1) - C
    1/y(1) = -ln(2) - C
    1/[-1/(log(2))] = -ln(2) - C
    -log(2) = -ln(2) - C
    C = 0
    y = -1/ln(1+t)
    %}
end 