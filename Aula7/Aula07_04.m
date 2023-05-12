clc;clear; close all force;

%experimento

L=10e-2;
DeltaL=0.1e-2;
T=6.37/10;
DeltaT=0.03/10;

g_estimado= 4*pi^2*L/T^2;
Deltag=g_estimado*sqrt((DeltaL/L)^2+...
     (2*DeltaT/T)^2);
fprintf('g = (%4.1f ± %4.1f) m/s^2 \n',...
        round(g_estimado,1),round(Deltag,1))

%estimativa por metodo de monte carlo

N=1000;%amostras
L=9.9 + rand(N,1)*0.2;
T=6.32+ rand(N,1)*0.06;

g=4*pi.^2*L./T.^2;
g_estimado=mean(g);
Deltag=max(g)-min(g);

fprintf('g = (%4.1f ± %4.1f) m/s^2 \n',...
        round(g_estimado,1),round(Deltag,1))
