function [ri]=RA225295_L06_01()
    f =@(x) 298+(80/(2*pi))*((1/0.18)*(log((0.0075+x)/0.0075))+(1/14)*(1/(0.0075+x)));
    x0=[0 0].';
    ri=fminbnd(f,0,0);
end