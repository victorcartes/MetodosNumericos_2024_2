
%% a)
clear
clc

% Cargamos los datos medidos
load("CO2 1.mat")
N = length(c);
alp = 0.0037;

% Creamos el vector de tiempo
t = (0:(N-1))';

% Creamos la matriz del modelo
A = [ones(N,1) exp(alp*t) cos((2*pi/12) * t) sin((2*pi/12) * t)];

% Resolvemos el sistema en el sentido de los minimos cuadrados
cte = A\c;

%% b)

% Variables para el grafico
xx = (0:0.001:(N-1))';
fx = [ones(length(xx),1), exp(alp * xx), cos((2*pi/12) * xx), sin((2*pi/12) * xx)] * cte;

% Realizamos el grafico
figure;
plot(t,c,'k*','LineWidth',2)
hold on
plot(xx,fx,'b')
hold off
legend('Datos','Modelo')
xlabel('Meses')
ylabel('Concetracion de CO2 (en partes por millon)')

%% c)

% El mes actual corresponderia a t = 250;
co2 = [1, exp(alp * 250), cos((2*pi/12) * 250), sin((2*pi/12) * 250)] * cte;

fprintf('En el mes actual deberia haber un concenctracion de CO2 de %f (en partes por millon) \n',co2);
