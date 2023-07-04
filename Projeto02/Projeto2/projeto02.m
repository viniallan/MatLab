clc;clear;close all force;

load input.mat
RA="225295";
[L, B, a, w0, E] = dados_de_entrada(RA, T);

a = 0.2;  % Exemplo: altura da seção transversal
B = 0.4;  % Exemplo: largura da seção transversal

[A, Qz, yc, Izz] = calcular_propriedades_geometricas(a, B);

fprintf('Área da seção transversal: %.4f\n', A);
fprintf('Primeiro momento de área, Qz: %.4f\n', Qz);
fprintf('Localização do centroide, yc: %.4f\n', yc);
fprintf('Segundo momento de área, Izz: %.4f\n', Izz);

##No código fornecido, a integração numérica foi realizada utilizando a função `integral` do MATLAB/Octave. Essa função utiliza um método de integração numérica adaptativo para calcular a integral de uma função em um intervalo específico. O método utilizado pelo `integral` é baseado em quadratura de Gauss-Kronrod.
##
##A função `integral` foi escolhida por sua conveniência e eficiência na integração numérica. Ela é capaz de lidar com funções complexas e adaptar a precisão da integração automaticamente.
##
##A diferença entre realizar uma única integração e uma integral dupla está no número de variáveis de integração envolvidas. Uma única integração é usada para calcular uma integral unidimensional, enquanto uma integral dupla envolve duas variáveis e é usada para calcular uma integral em uma região bidimensional.
##
##Quanto aos erros nos cálculos, é importante destacar que a integração numérica é uma aproximação da solução analítica exata. Portanto, é normal que haja erros de truncamento e arredondamento associados à discretização do intervalo de integração e aos métodos numéricos utilizados. Esses erros podem ser considerados aceitáveis dependendo da precisão exigida para a aplicação em questão.
##
##Para diminuir os erros obtidos na integração numérica, você pode aumentar a precisão do método de integração escolhido, diminuir o tamanho do intervalo de integração ou utilizar técnicas de integração mais avançadas, como métodos adaptativos com tolerâncias menores.
##
##Além disso, é sempre recomendado comparar os resultados obtidos com valores analíticos conhecidos, quando disponíveis, para verificar a precisão da integração numérica.
##


