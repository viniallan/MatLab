function [r,theta] = coordPolar(x,y)
    interno=x^(2)+y^(2);
    r=sqrt(interno);
    if (x<0 && y>0)
        theta=meu_atan(y/x,10^-5)+pi;
    elseif (x<0 && y<0)
        theta=meu_atan(y/x,10^-5)-pi;
    elseif (x<0 && y==0)
        theta=pi;
    elseif (x==0 && y>0)
        theta=pi/2; 
    elseif (x==0 && y<0)
        theta=-pi/2;
    elseif (x==0 && y==0)
        theta=0;
    elseif (x>0 && y==0)
        theta=0;
    else
        theta=meu_atan(y/x,10^-5);
    end
end