clc %limpar a tela
clear %limpar toda as variaveis
close all %fechar todas as janelas de figuras
close all force %fechar todas janelas ate as que nao sao figuras

x = input ('Entre com x: ');%Com ponto e virgula nao imprime a atribuicao
y = input ('Entre com y: ');

% x+y; sem ponto e virgula ele printa na tela

% disp(x+y) disp apenas publica/printa porem nao cria variavel ans

fprintf('x+y = %5.5f\n',x+y) %printa formatado
msgbox(sprintf('x+y=%5.5f\n',x+y))%printa dentro de uma caixinha box
