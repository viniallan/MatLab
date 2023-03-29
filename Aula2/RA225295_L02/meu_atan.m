function [atan_x]=meu_atan(x,eps)
    sinal=1;
    termo=x;
    soma=x;
    n=3;
    if (x<=1 && x>=-1)
        while (((termo*x*x*(n-2)/n))>eps)
            termo=termo*x*x*(n-2)/n;
            sinal=-sinal;
            soma=soma+sinal*termo;
            n=n+2;
        end 
        atan_x=soma;
    else
        atan_x=(pi/2)-meu_atan(1/x,eps);
    end
end
