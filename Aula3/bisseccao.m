function p = bisseccao(f,a,b)
    %esta funcao determina uma aproximacao para f(p)=0 atraves
    %do metodo da bisseccao
    %esta funcao recebe um ponteiro pra funcao f, function handle
    %e os extremos dos intervalos a-b
    %e retorna a raiz p da equacao
    if(f(a)*f(b)>0) %A funcao nao muda e sinal
        error('Funcao nao muda de sinal nos valores dados');
    end
    N0=1000; %numero maximo de iteracoes
    TOL=1e-8;   %tolerncia do processso iterarivo
    i=1;
    fa=f(a);   %ponteiro pra funcao em x=a
    encontrou=false;
    while (i<N0)
        p=(a+b)/2;
        fp=f(p);
        
        if(abs(fp)<TOL && ((b-a)/2)<TOL)%deixando o codigo mais eficiente
            %return;
            encontrou=true;
            break; %encerra o loop
         
        end
        i=i+1;
        if(fa*fp>0)
            a=p;
            fa=fp;
        else
            b=p;
        end
    end
    if(~encontrou)
        error('NÃO encontrou a raiz em %d iterações',N0);
    end
end