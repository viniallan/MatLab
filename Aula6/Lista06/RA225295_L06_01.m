function [ri]=RA225295_L06_01()
    %como se trata de uma funcao que depene apenas de uma variavel, podemos
    %escrever a funcao f, e usar a funcao fminbnd para achar o ponto de
    %minimo, o ponto de minimo eh em ri=0 e f=419.2609
    f =@(x) 298+(80/(2*pi))*((1/0.18)*(log((0.0075+x)/0.0075))+(1/14)*(1/(0.0075+x)));
    %fplot(f)
    ri=fminbnd(f,0,0);
end