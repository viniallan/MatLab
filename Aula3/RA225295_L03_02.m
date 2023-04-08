function [H] = RA225295_L03_02()
  %Essa funcao retorna a altura H para que a velocidade do escoamento seja v=5m/s
  %Decorrido 2.5 s  no casod de um tubo de 4 m de altura
  %Essa funcao usa uma funcao anonima na linha 9 
  %onde 0=sqrt(2*g*H)*tanh(sqrt((2*g*H*t)/(2*L)))-v
  g=9.81;  %m/s²
  L=4;     %m
  t=2.5;   %s
  v=5;     %m/s
  f=@(H) (sqrt(2*g*H)*tanh(sqrt((2*g*H*t)/(2*L)))-v);
  H=fzero(f,[0 10]);
end
