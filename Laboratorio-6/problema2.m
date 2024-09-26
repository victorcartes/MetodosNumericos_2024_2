clc
clear

% generamos las matrices del sistema
n = 1000;
A = [2*speye(n) -speye(n); -speye(n) 2*speye(n)];
b = (1:2000)';

% Obtener la solucion exacta del sistema Ax=b
x_exacta = A \ b;

%% item a)

[x_J, iter_J] = jacobi(A, b, 1000, 1e-6);

disp('Cantidad de iteraciones hechas por el metodo de Jacobi')
disp(iter_J)

disp('Error cometido por el metodo de Jacobi')
disp(norm(x_J - x_exacta,'inf'))

%% item b)

[x_GS, iter_GS] = gauss_seidel(A, b, 1000, 1e-6);

disp('Cantidad de iteraciones hechas por el metodo de Gauss-Seidel')
disp(iter_GS)

disp('Error cometido por el metodo de Gauss-Seidel')
disp(norm(x_GS - x_exacta,'inf'))