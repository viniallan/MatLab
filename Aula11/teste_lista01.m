% Definição da função y'
dydt = @(y, t) (2-(2*t*y))/((t^2)+1)  % Exemplo de função y' = t * y

% Parâmetros
t0 = 0;          % Valor inicial de t
tf = 1;          % Valor final de t
N = 100;         % Número de pontos
h = (tf - t0) / N;  % Tamanho do passo

% Condição inicial
y0 = 1;          % Valor inicial de y

% Inicialização dos vetores de t e y
t = linspace(t0, tf, N+1);
y = zeros(size(t));
y(1) = y0;

% Cálculo da aproximação para y' usando o método de Euler
for i = 1:N
    y(i+1) = y(i) + h * dydt(y(i), t(i));
end

% Exibição do resultado
disp(y);