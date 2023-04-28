function [f]=fun(xn)
    x=xn(1);
    y=xn(2);
    f = zeros(2,1);
    f(1)=tan(x)-y-1;
    f(2)=cos(3)-3*sin(y);
end