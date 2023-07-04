function [x, y, theta, h] = RA225295_L12_02()
    % Parâmetros
    E = 2e11;  % Módulo de elasticidade (Pa)
    I = 0.00012;  % Momento de inércia de área (m^4)
    w0 = 40e3;  % Carregamento linearmente crescente (N/m)
    L = 3;  % Comprimento da viga (m)

    % Condições iniciais
    y0 = 0;
    dy0 = 0;

    % Discretização da distância x
    numPontos = 100;
    x = linspace(0, L, numPontos);

    % Resolução numérica da equação diferencial
    fun = @(x, y) [y(2); (w0*L/2)*x/(E*I) - (w0/(6*L*E*I))*x.^3 - (w0*L^2/3)/(E*I)];
    [x, sol] = ode45(fun, x, [y0; dy0]);

    % Extração dos resultados
    y = sol(:, 1);
    theta = sol(:, 2);

    % Solução analítica
    theta_analytical = (w0*L/(4*E*I)) * x.^2 - (w0/(24*L*E*I))*x.^4 - ((w0*L^2)/(3*E*I)* x);
    y_analytical = (w0*L/(12*E*I)) * x.^3 - (w0/(120*L*E*I))*x.^5 - (((w0*L^2)/(6*E*I))* x.^2);


    % Plotar deflexão y e inclinação theta
    h = figure;
    subplot(2, 1, 1);
    plot(x, y, 'b-', x, y_analytical, 'ko--');
    xlabel('Distância x (m)');
    ylabel('Deflexão y (m)');
    legend('Solução Numérica', 'Solução Analítica');
    title('Deflexão y ao longo da viga');

    subplot(2, 1, 2);
    plot(x, theta,'b-',x,theta_analytical,'or');
    xlabel('Distância x (m)');
    ylabel('Inclinação \theta (rad)');
    legend('Solução Numérica', 'Solução Analítica');
    title('Inclinação \theta ao longo da viga');
end
