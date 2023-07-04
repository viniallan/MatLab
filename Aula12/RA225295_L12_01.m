function [t, x1, x2, x3, dx1, dx2, dx3, h] = RA225295_L12_01()
    % Parâmetros
    m3 = 8000;
    m2 = 10000;
    m1 = 12000;
    k3 = 1800;
    k2 = 2400;
    k1 = 3000;

    % Condições iniciais
    x10 = 0;
    v10 = 1;
    x20 = 0;
    v20 = 0;
    x30 = 0;
    v30 = 0;

    % Tempo de simulação
    tspan = [0 20];

    % Resolver as EDOs
    fun = @(t, Y) [Y(2); -(k1/m1)*Y(1) + (k2/m1)*(Y(3)-Y(1)); ...
                   Y(4); (k2/m2)*(Y(1)-Y(3)) + (k3/m2)*(Y(5)-Y(3)); ...
                   Y(6); (k3/m3)*(Y(3)-Y(5))];
    [t, sol] = ode45(fun, tspan, [x10; v10; x20; v20; x30; v30]);

    % Extrair as respostas
    x1 = sol(:, 1);
    x2 = sol(:, 3);
    x3 = sol(:, 5);
    dx1 = sol(:, 2);
    dx2 = sol(:, 4);
    dx3 = sol(:, 6);

    % Plotar os resultados
    h = figure;

    % Plotar deslocamentos
    subplot(2, 1, 1);
    plot(t, x1, 'b-', t, x2, 'r--', t, x3, 'g-.');
    xlabel('Tempo (s)');
    ylabel('Deslocamento (m)');
    legend('Andar 1', 'Andar 2', 'Andar 3');
    title('Deslocamentos dos Andares');

    % Plotar velocidades
    subplot(2, 1, 2);
    plot(t, dx1, 'b-', t, dx2, 'r--', t, dx3, 'g-.');
    xlabel('Tempo (s)');
    ylabel('Velocidade (m/s)');
    legend('Andar 1', 'Andar 2', 'Andar 3');
    title('Velocidades dos Andares');
end
