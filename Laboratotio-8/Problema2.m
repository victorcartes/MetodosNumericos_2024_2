%% Limpiza
clear 
clc

% Cargan los datos guardados en el archivo pieza.mat
load("pieza.mat")

%% a)

figure;
plot(x1, y1,'o','LineWidth',3)
hold on
plot(x2, y2,'o','LineWidth',3)
plot(x3, y3,'o','LineWidth',3)
hold off
legend('Datos grupo 1','Datos grupo 2','Datos grupo 3')

%% c)

% Spline grupo 1
xx1 = min(x1):0.01:max(x1);
s1 = spline(x1, y1, xx1);

% Spline grupo 2
xx2 = min(x2):0.01:max(x2);
s2 = spline(x2, y2, xx2);

% Spline grupo 3
xx3 = min(x3):0.01:max(x3);
s3 = spline(x3, y3, xx3);

% Grafico
figure;
plot(x1, y1,'o','LineWidth',3)
hold on
plot(x2, y2,'o','LineWidth',3)
plot(x3, y3,'o','LineWidth',3)
plot(xx1, s1, 'b')
plot(xx2, s2, 'r')
plot(xx3, s3, 'g')
hold off
legend('Datos grupo 1','Datos grupo 2','Datos grupo 3', ...
    'Spline grupo 1', 'Spline grupo 2', 'Spline grupo 3')



