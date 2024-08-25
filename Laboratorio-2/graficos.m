%% Primer grafico
clc
clear

f = @(x) x.^2;

xx = -1:0.01:1;
yy = f(xx);

figure
plot(xx, yy)

f2 = @(x) x.^3;

yy2 = f2(xx);

% Si no estuviera el figure, el segundo plot sobre escribiria el primer plot
figure
plot(xx, yy2)

%% Curvas en la misma grafica

% opcion 1
figure
plot(xx, yy, xx, yy2)

% opcion 2
figure
plot(xx, yy)
hold on
plot(xx, yy2)
hold off

%% 

figure
% Los argumentos extras al plot cambian el estilo del grafico. 
% Para ver mas estilos, vea la imagen que se encuentra en esta misma carpeta
plot(xx,yy,'m--')
% grid on permite mostrar una grilla en la grafica
grid on
hold on
% El comando LineWidth permite cambiar el gruesor de las lineas de la curva
% Por defecto este comando esta igual a 1
plot(xx,yy2, 'bd','LineWidth',2)
hold off
% Pone un leyenda en la ventana del grafico. El orden de los nombres corresponde en el orden de los plot
% Se pueden poner mas argumentos a legend para cambiar la ubicacion manuelmente
legend('Cuadratica','Cubica')
% Etiqueta del eje x
xlabel('Leyenda eje x')
% Etiqueta del eje y
ylabel('Leyenda eje y')
% Titulo del grafico
title('Titulo muy interezante')








