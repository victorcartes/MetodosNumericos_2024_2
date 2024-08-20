%% Primer grafico
clc
clear

f = @(x) x.^2;

xx = -1:0.01:1;
yy = f(xx);

figure
plot(xx,yy)

f2 = @(x) x.^3;

yy2 = f2(xx);

figure
plot(xx,yy2)

%% Curvas en la misma grafica

% opcion 1
figure
plot(xx,yy,xx,yy2)

% opcion 2
figure
plot(xx,yy)
hold on
plot(xx,yy2)
hold off

%% 

figure
plot(xx,yy,'m--')
grid on
hold on
plot(xx,yy2, 'bd')
hold off
legend('Cuadratica','Cubica')
xlabel('Leyenda eje x')
ylabel('Leyenda eje y')
title('Titulo muy interezante')








