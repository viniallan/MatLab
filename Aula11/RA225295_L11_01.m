function [t,y] = RA225295_L11_01()
    f=@(t,y) (2-2*t*y)/(t.^2+1);
    t=[0 1];
    y0=1;
    
    [t,y]= ode45(f,t,y0);
    %{
    %Solucao analitca
    dy/dt = (2 - 2ty)/(t^2 + 1)
    dy/(2 - 2ty) = dt/(t^2 + 1)
    ∫(dy/(2 - 2ty)) = ∫(dt/(t^2 + 1))
    (1/2)∫(dy/(1 - t*y)) = ∫(dt/(t^2 + 1))
    (1/2)∫(dy/(1 - ty)) = (1/2)∫(A/(1 - ty))dy + (1/2)∫(B/(1 - t*y))dt
    (A/(1 - ty))dy + (B/(1 - ty))dt = (Adt + Bdy)/(1 - t*y)
    Adt + Bdy = 1
    Bdy = 0 --> B = 0
    Adt = 1 --> A = 1
    (1/2)∫(dy/(1 - t*y)) = ∫(1/(t^2 + 1))dt
    (1/2)∫(dy/(1 - t*y)) = ∫(1/(t^2 + 1))dt
    (1/2)ln|1 - t*y| = arctan(t) + C
    ln|1 - ty| = 2arctan(t) + C
    ln|1 - 01| = 2arctan(0) + C
    ln|1| = 0 + C
    0 = C
    ln|1 - ty| = 2arctan(t)
    |1 - ty| = e^(2arctan(t))
    1 - ty = e^(2arctan(t))
    y = (1 - e^(2*arctan(t)))/t
    %}

end