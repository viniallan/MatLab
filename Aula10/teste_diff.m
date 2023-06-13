% Função anônima
f = @(x) x^2 + 2*x + 1;

% Calcula a derivada da função anônima
f_prime = diff(f);

% Teste da função derivada
x_test = 2;
y_prime_test = f_prime(x_test);
disp(y_prime_test);
