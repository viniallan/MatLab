function [x1,x2]=RA225295_L06_02()  
    f=@(x) (1/2)*(9/0.01)*(sqrt(x(1)^(2)+(0.1-x(2))^(2))-0.1)^(2)...
        +(1/2)*(2/0.01)*(sqrt(x(1)^(2)+(0.1-x(2))^(2))-0.1)^(2)...
        +2*(x(1))-4*(x(2));
    [x,fx]=fminsearch(f,[1 1]');
    x1=x(1);
    x2=x(2);
end