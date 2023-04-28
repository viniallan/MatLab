clc;clear;close all force;
x = [0 0 0 0].'; %estimativa inicial
x = zeros(4,1); % maneira alternativa de inicializar meu vetor
n = 1;  %contador
TOL = 1e-3;   %tolerancia
res = 1e100;  %resíduo
while res>TOL
    x_old = x;  %valor da iteracao anterior
    %iteracoes de Gauss-seidel
    x(1)= (x(2) - 2*x(3) + 6)/10;
    x(2)= (x(1)+x(3)-3*x(4)+25)/11;
    x(3)=(-2*x(1)+x(2)+x(4)-11)/10;
    x(4)=(-3*x(2)+x(3)+15)/8;
    n=n+1;
    res=norm(x-x_old)/norm(x);
end 
fprintf('Convergiu após %d iteracoes',n);
x


%%
%Inteligent Solution
A=[10 -1 2 0
    -1 11 -1 3
    2 -1 10 -1
    0 3 -1 8];
b=[6 25 -11 15].';
C=A-diag(diag(A));% extrai e cria uma matriz com a diagonal
for i=1:size(A,1)
    C(i,:)=C(i,:)/A(i,i);
end
d=b./diag(A);

%iteracoes de Gauss-seidel

n=1;
x=zeros(4,1);
res=1;
TOL=1e-3;


while res>TOL
    x_old = x;
    
    for i=1:size(A,1)
        x(i)=d(i)-C(i,:)*x;
    end
   
    res=norm(x-x_old)/norm(x);
    n=n+1;
end
fprintf('convergiu apos %d iteracoes',n);
x
x_exato=A\b;
norm(x-x_exato)

