function p = raiz2(a0)
    %esta funcao calcula uma aproximacao para raiz quadrada
    % de 2, dada um aestimativa inicial a0>0, atraves do metodo babilonico
    a1=(a0/2)+(1/a0);   %recorrencia
    if (abs(a1-a0) < 1e-6) %crieiro de parada
        p=a1;
    else
        p=raiz2(a1);
    end
end