function [x1,x2]=RA225295_L06_02()  
    %a funcao eh dependente de 2 variaveis, x(1) e x(2)
    %dessa forma, eh necessario usar a funcao fminsearch para 
    %retornar os dois pontos onde f eh minimo
    f=@(x) (1/2)*(9/0.01)*(sqrt(x(1)^(2)+(0.1-x(2))^(2))-0.1)^(2)...
        +(1/2)*(2/0.01)*(sqrt(x(1)^(2)+(0.1-x(2))^(2))-0.1)^(2)...
        +2*(x(1))-4*(x(2));
    [x,fx]=fminsearch(f,[1 1]');
    x1=x(1);
    x2=x(2);
end