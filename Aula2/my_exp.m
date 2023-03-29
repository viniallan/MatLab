function y=my_exp(x,eps)
%essa funcao calcula uma aproximacao para exp(x)
%dados w e eps reais
%a funcao retorna y=exp(x)
%
%See also: exp
    soma=1;
    termo=1;
    n=0;
%     while ((x^n)/factorial(n)>eps) MANEIRA BURRA
%         soma=soma+(x^n)/factorial(n)
%         n=n+1;
%     end
    n=1;
    while(termo>eps)
        termo=termo*x/n;
        soma=soma+termo;
        n=n+1;
    end
    y=soma;
end
