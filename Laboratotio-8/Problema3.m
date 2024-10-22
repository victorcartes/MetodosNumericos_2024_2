%% 
clear
clc

load("espiral.mat")

%% a)

figure;
plot(x,y,'o','LineWidth',3)

%% b)

% Parametrizacion de las coordenadas
idx = 1:length(x);
xx = 1:0.01:idx(end);

% Interpolador spline por cada coordenada
sx = spline(idx, x, xx);
sy = spline(idx, y, xx);

% Grafico de la espiral
figure;
plot(x,y,'o','LineWidth',3)
hold on
plot(sx, sy)
hold off
legend('Datos','Spline parametrizada')

