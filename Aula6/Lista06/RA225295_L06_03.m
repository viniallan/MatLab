function[y]=RA225295_L06_03()
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