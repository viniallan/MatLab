clc;clear;close all force;

load data.mat;

% load("U:\11SEM\ES020\Aula7\data.mat");

% s = load('data.mat'); estrutura, colocando os dados em estrutura

mean(X,2)% Calcula a media considerando linhas
mean(X(:))%calcula de todos os elementos 
mean(X,'all')%calcula a media de tudo

x_median=median(X(:)) ;  %valor central
x_mode=mode(X(:)); %valor que ocorre mais frequentemente

x_min=min(X(:));
x_max=max(X(:));
x_range=x_max-x_min; %intervalo

%desvio padrao
sx=std(X(:));
%variancia
sx_sqrt=sx^2;
sx_sqrt=var(X(:));
%coefiente de varianciao
cv=sx/mean(X(:));


