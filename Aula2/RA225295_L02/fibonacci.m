function [Fn] = fibonacci(n)
    soma=0;
    if (n==1 || n==2)
        soma=1;  
    end
    if(n>=3)
        soma=fibonacci(n-1)+fibonacci(n-2);  
    end
    Fn=soma;
end