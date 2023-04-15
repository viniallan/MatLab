function [i]=retorna_vetor_corrente(R)
  %Essa funcao resolve o sistema linear do circuito
  %uma das constante eh um parametro do sistema
  %a funcao devolve um vetor coluna das correntes encontradas
  %para aquela Resistencia passada como parametro  
  A=[(5+15) 0 -15;0 (5+10+R) (-R);(-15) (-R) (20+R+15)];
  b=[220;0;0];
  i=A\b;
end
