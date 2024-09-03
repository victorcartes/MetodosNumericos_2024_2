
%% Grafico de la funcion de Taylor del sin
clear
clc

% Discretizacion del dominio
xplot = (-2*pi):0.001:(2*pi); % [-2pi,2pi]
% xplot = linspace(-2*pi,2*pi,10000); % [-2pi,2pi]

% Evaluacion del sin
ysin = sin(xplot);

% Evaluacion del Pol. de la seria de Taylor con n = 3, 4, 5, 8
y3 = taylor_sin(xplot,3);
y4 = taylor_sin(xplot,4);
y5 = taylor_sin(xplot,5);
y8 = taylor_sin(xplot,8);

% Grafico de todas las funciones
figure
plot(xplot, ysin, xplot, y3, xplot, y4, xplot, y5, xplot, y8)
legend('sin','Pol. Taylor n=3','Pol. Taylor n=4','Pol. Taylor n=5','Pol. Taylor n=8')

% Valores de los polinomios en x = 0.1, 0.3, 15
A = zeros(4,3);
x = [0.1 0.3 15];
% Primera fila pol n = 3 evaluado en x
A(1,:) = taylor_sin(x,3);
% Segunda fila pol n = 4 evaluado en x
A(2,:) = taylor_sin(x,4);
% Tercera fila pol n = 5 evaluado en x
A(3,:) = taylor_sin(x,5);
% Cuarta fila pol n = 8 evaluado en x
A(4,:) = taylor_sin(x,8);

disp('Valores de los Polinomios de Taylor en x=0.1, 0.3, 15')
disp(A)

% Error obtenido por los polinomios en x = 0.1, 0.3, 15
B = zeros(4,3);
% Primera fila pol n = 3 evaluado en x
B(1,:) = abs( sin(x) - taylor_sin(x,3) );
% Segunda fila pol n = 4 evaluado en x
B(2,:) = abs( sin(x) - taylor_sin(x,4) );
% Tercera fila pol n = 5 evaluado en x
B(3,:) = abs( sin(x) - taylor_sin(x,5) );
% Cuarta fila pol n = 8 evaluado en x
B(4,:) = abs( sin(x) - taylor_sin(x,8) );

disp('Error cometido por los Polinomios de Taylor en x=0.1, 0.3, 15')
disp(B)

function y = taylor_sin(x,n)
    y = 0;
    fr = 1;
    for k = 0:n
        % calculo del factorial de los numeros impares
        if k == 0
            fr = 1;
        else
            fr = (2*k+1) * (2*k) * fr;
        end
        % calculo de la sumatoria de la seria de Taylor
        y = y + ((-1)^k / fr) * x.^(2*k+1);
    end
end

