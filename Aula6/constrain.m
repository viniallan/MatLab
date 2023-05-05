function [c,ceq]=constrain(x)
    c(1)=x(2).^2-x(1);
    ceq(1)=x(1).^2+x(2).^2-1;
end