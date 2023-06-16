function [t,y] = euler(f,t0,tf,y0,h)
    t(1)= t0;
    y(1)=y0;
    n=1;
    while(t(n)<tf)
        t(n+1)=t(n) + h;
        y(n+1) = y(n)+h*f(t(n),y(n));
        n=n+1;
    end
end