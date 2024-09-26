
%% Data 1

clear
clc

% Guardamos en memoria el sistema guardado en data-1.mat
load("data-1.mat")

% Veamos la estructura de la matriz
figure;
spy(A)

[x, iter] = gauss_seidel(A, b, 1000, 1e-6);

disp('Cantidad de iteraciones hechas por el metodo de Gauss-Seidel para los datos 1')
disp(iter)

disp('Error cometido por el metodo de Gauss-Seidel para lso datos 1')
disp(norm(x - A\b,'inf'))

figure;
show

%% Data 2

clear
clc

% Guardamos en memoria el sistema guardado en data-1.mat
load("data-2.mat")

% Veamos la estructura de la matriz
figure;
spy(A)

[x, iter] = gauss_seidel(A, b, 1000, 1e-6);

disp('Cantidad de iteraciones hechas por el metodo de Gauss-Seidel para los datos 2')
disp(iter)

disp('Error cometido por el metodo de Gauss-Seidel para lso datos 2')
disp(norm(x - A\b,'inf'))

figure;
show

%% Data 3

clear
clc

% Guardamos en memoria el sistema guardado en data-1.mat
load("data-3.mat")

% Veamos la estructura de la matriz
figure;
spy(A)

[x, iter] = gauss_seidel(A, b, 1000, 1e-6);

disp('Cantidad de iteraciones hechas por el metodo de Gauss-Seidel para los datos 3')
disp(iter)

disp('Error cometido por el metodo de Gauss-Seidel para lso datos 3')
disp(norm(x - A\b,'inf'))

figure;
show
