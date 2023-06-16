% Definição da função y'
dydt = @(y, t) (y^2+y)/(t)  % Exemplo de função y' = t * y

% Parâmetros
t0 = 1;          % Valor inicial de t
tf = 3;          % Valor final de t
N = 100;         % Número de pontos
h = (tf - t0) / N;  % Tamanho do passo

% Condição inicial
y1 = -2;          % Valor inicial de y

% Inicialização dos vetores de t e y
t = linspace(t0, tf, N+1);
y = zeros(size(t));
y(1) = y1;

% Cálculo da aproximação para y' usando o método de Euler
for i = 1:N
    y(i+1) = y(i) + h * dydt(y(i), t(i));
end

% Exibição do resultado
disp(y);