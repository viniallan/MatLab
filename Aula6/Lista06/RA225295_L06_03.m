function[y]=RA225295_L06_03()
    %para termos a tensao de flexao minima, precisamos que nosso S seja o
    %maximo possivel, por isso, implementamos nossa funcao normal, porem.
    %quando definimos f, definimos como o inverso de y.
    
    %porem como a funcao nao tem um minimo global e nem pode assumir
    %valores negativos, definimos com uma restricao de lb>=0.
    f=@(y) -1*calcula_S(y);
    x0=0;
    A=[];
    b=[];
    Aeq=[];
    beq=[];
    lb=0;
    ub=[];
    [y,fy]=fmincon(f,x0,A,b,Aeq,beq,lb,ub);
end