clc; clear ;close all force;

%temos duas restricoes


f=@(x,y,z) x.^2+y.^2-z;
fimplicit3(f,[-5 5 -5 5 0 5],'facecolor','y',...
    'facealpha',0.25,'meshdensity',10);
hold on;

f = @(x,y,z) x.^2 +y.^2 -1; %cilindro
%restricao de igualdade
fimplicit3(f,[-5 5 -5 5 0 5],'facecolor','r',...
    'facealpha',0.5,'meshdensity',10);

 f = @(x,y,z) y.^2 -x; %parabola
 %restricao de desigualdae
 fimplicit3(f,[-5 5 -5 5 0 5],'facecolor','g',...
    'facealpha',0.5,'meshdensity',10);
 
xlabel('X');
ylabel('Y');

%%

%resolver problems de otimizacao
f =@(x) x(1).^2 + x(2).^2;
x0=[0 0];
[x,fx] = fmincon(f,x0,[],[],[],[],[],[],...
    @constrain);

plot3(x(1),x(2),fx,'or');
