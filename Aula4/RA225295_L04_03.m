function [i] = RA225295_L04_03()
  % Esse codigo retorna uma matrix i onde cada linha representa uma corrente diferente no circuito
  %a linha 1 representa a corrente 1, a 2 a corrente 2, e a 3 a corrente 3;
  %a coluna é formada pela diferente resistencia que passamos como parametro
  %entao para cada coluna teremos um vetor coluna de correntes para uma resistencia determinada
  i=[retorna_vetor_corrente(5) retorna_vetor_corrente(10) retorna_vetor_corrente(20)];
end