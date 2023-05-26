clc;clear;close all force;

dt = 0.01;%passo de tempo 

n = 64; %numero de pontos

t = (0:n-1)*dt;
y = 4+sin(2*pi*8*t)+cos(2*pi*14*t)+cos(2*pi*20*t);
figure;
plot(t,y,'--o'); hold on;

fs = 1/dt; %frequencia de amostragem [Hz]

T = t(end); %comprimento total da amostra (s)
f_max = 0.5*fs; %maxima frequencia detectada
%frequencia de Nyquist
f_min = 1/T; %menor frequencia detectavel

Y = fft(y)/n; %calcula a transformada de fourier

f=linspace(f_min,f_max,n/2);

a0=Y(1); %media da funcao
Y(1)=[];
figure
subplot(2,1,1)
stem(f,abs(Y(1:n/2)))
subplot(2,1,2)
stem(f,angle(Y(1:n/2)))

y_aproximado = zeros(size(t));
for j=1:n %loop para cada elento de t
    y_aproximado(j)=0
    for k=1:n
        y_aproximado(j)=y_aproximado(j)+...
            Y(k)*exp(2*pi*1i/n*(j-1)*(k-1));
    end
end

plot(t,y,aproximado,'*k');