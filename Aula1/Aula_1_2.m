clc;clear;close all force;
fileID = fopen('entrada.txt','r');%abre arquivo txt formato read
n=fscanf(fileID,'%d'); %le do arquivo formato digital e coloca em n
fclose(fileID); %fecha referencia do arquivo

saida = 1:n; %vetor de 1 a n 
fileID = fopen('saida.txt','w'); %abre arquivo que nao existe e escreve 
fprintf(fileID,'%d ', saida);   %escreve no arquivo saida
fclose(fileID); %fecha referencia



