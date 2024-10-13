
%% b)
clear
clc


for n = 0:5:30
    % Creamos la matriz
    A = minpolinomio(n, 30);
    % Se muestra en pantalla los resultados
    fprintf('Con n = %f el numero de condicionamiento de A es:\n', n);
    disp(cond(A));
end

%% c)

clear
clc

m = 10; n = 5;
A = minpolinomio(n, m);

% i)

[Q,R] = qr(A);

% ii)

C = Q * Q';

disp ('Es Q ortogonal? ')
disp(C)

disp('Otra opcion es calcular la distancia con la identidad')
disp(norm(C - eye(11),'inf') )

% iii)

disp('El rango de la matriz R es:')
disp(rank(R))

% iv)

R1 = R(1:6,:); % primeras 6 filas de R

Q1 = Q(:,1:6); % primeras 6 columnas de Q

disp('Verificamos que se cumple esta igualdad Q1R1 = A')
disp(norm(Q1*R1 - A,'inf'))

% v)

disp('Verificamos la propiedad del numero de condicionamiento')

disp(abs( cond(R) - sqrt(cond(A'*A)) ))

% vi)

% Calcular la factorizacion de Cholesky
Rchol = chol(A'*A);

%% d)
clear
clc

m = 10; n = 5;
A = minpolinomio(n, m);

% i)
h = 1/m;
t = (0:h:1)';

% Datos
y1 = exp(t);

% Tenemos el sistema Ac = y1
% Resolvemos el sistema, atravez de resolver el sistema normal
B = A' * A;
Nb = A' * y1;
Nc = B\Nb; % B*Nc = Nb

% En versiones mas modernas de matlab, ya no es necesario escribir
% manualmente el sistema normal
c = A \ y1;

disp(Nc);
disp(c);

% Variables para el grafico
xx = (0:0.001:1)';

% Modelo
fx = [xx.^5 xx.^4 xx.^3 xx.^2 xx ones(length(xx),1)]*c;

figure;
plot(t,y1,'k*','LineWidth',2)
hold on
plot(xx,fx,'b')
hold off
legend('Datos','Pol. de grado 5')
title('Funcion original e^x vs aproximacion de un polinomio por min. cuadrados')

% ii)

h = 1/m;
t = (0:h:1)';

% Datos
y2 = sin(t) + 0.05 * rand(length(t),1);

% Encontramos la solucion del sistema en el sentido de los minimos cuadros
c1 = A \ y2;

% Variables para el grafico
xx = (0:0.001:1)';

% Modelo
fx = [xx.^5 xx.^4 xx.^3 xx.^2 xx ones(length(xx),1)]*c1;

figure;
plot(t,y2,'k*','LineWidth',2)
hold on
plot(xx,fx,'b')
hold off
legend('Datos','Pol. de grado 5')
title('Funcion original sin(x) + ruido vs aproximacion de un polinomio por min. cuadrados')