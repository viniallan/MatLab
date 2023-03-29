clc;clear;close all force;
%tabelados
v1=[10:10:80];
F1=[25 70 380 550 610 1220 830 1450];
%funcao
v2=v1;
F2=(0.2741)*v2.^(1.9842);
%grafico
figure(1);
plot(v1,F1,'>',...
    'MarkerEdgeColor','r',...
    'MarkerFaceColor','g')
hold on
plot(v2,F2,':',...
    'LineWidth',2.5,...
    'color',[0.5,0.5,0.5]);
hold off
xlabel('v[m/s]');
ylabel('F[N]');
title('Força x Velocidade: Túnel de Vento');
legend('data','eq');


