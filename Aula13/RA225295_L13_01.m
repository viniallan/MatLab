function [w, X] = RA225295_L13_01()
    % Dados do problema
    k1 = 20;
    k2 = 45;
    k3 = 45;
    k4 = 20;
    m1 = 1.25;
    m2 = 2.5;
    m3 = 1.25;
    
    % Matriz de coeficientes dos termos de rigidez
    A = [(k1 + k2) -k2 0; -k2 (k2 + k3) -k3; 0 -k3 (k3 + k4)];
    
    % Matriz identidade
    I = eye(3);
    
    % Resolução do autoproblema
    [X, lambda] = eig(A, I);
    
    % Frequências naturais
    w = sqrt(diag(lambda));
end
