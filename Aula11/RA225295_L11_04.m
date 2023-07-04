function [t,y] = RA225295_L11_04()
    f=@(t,y) -t*y+(4*t)/(y);
    t=[0 1];
    y0=1;
    
    [t,y]= ode45(f,t,y0);
    
    %solucao analitica
    
    %{
    dy/dt = -ty + (4t)/y
    dy/y = (-ty + (4t)/y) dt
    dy/y + tdt = 4dt/y
    ∫(dy/y) + ∫(t*dt) = 4∫(dt/y)
    ln|y| + (t^2)/2 = 4ln|y| + C
    ln|y| - 4ln|y| = -(t^2)/2 + C
    -3ln|y| = -(t^2)/2 + C
    ln|y^(-3)| = -(t^2)/2 + K
    |y^(-3)| = e^(-(t^2)/2 + K)
    |1^(-3)| = e^(-(0^2)/2 + K)
    1 = e^(K)
    |y^(-3)| = e^(-(t^2)/2)
    y^(-3) = e^(-(t^2)/2)
    y^3 = e^((t^2)/2)
    y = (e^((t^2)/2))^(1/3)
    y = e^((t^2)/6)
    %}
end 