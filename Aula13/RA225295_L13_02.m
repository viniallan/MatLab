function [P_crit, V] = RA225295_L13_02()
    % Dados do problema
    E = 10e9;
    I = 1.5e-5;
    L = 3.5;
    num_segments = 5;
    num_nodes = num_segments - 1;
    Deltax = L / num_segments;
    p_square = (1 / (E * I)) * Deltax^2;
    
    % Matriz de coeficientes da diferença finita
    A = ((2 / Deltax^2) - p_square) * eye(num_nodes);
    A = A + (-1 / Deltax^2) * diag(ones(num_nodes - 1, 1), 1);
    A = A + (-1 / Deltax^2) * diag(ones(num_nodes - 1, 1), -1);
    
    % Resolução do autoproblema
    [V, lambda] = eig(A);
    
    % Cargas críticas de flambagem
    P_crit = E * I * diag(lambda);
end
