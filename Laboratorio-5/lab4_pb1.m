

%% Item b
clear
clc

A = tridiagonal(10,4,1,1);

disp('El rango de la matriz tridiagonal A es:')
disp(rank(A))

% como rank(A)= 10, esto nos quiere decir que es invertible

%% Item c

% Vamos a resolver el sistema de ecuacion Ax=b

% Definamos b
b = (1:10)';

% Sintaxis para resolver un sistema Ax=b
x = A\b; % distinto A/b

disp('Solucion del sistema de ecuaciones')
disp(x)

% Calculamos la factoriazacion lu de A
[L,U] = lu(A);

% Resolvemos el sistema de ecuacion Ax=b
y1 = L\b; % Ly=b 
x1 = U\y1; % Ux=y

% Escrito de una forma mas compacta
x_lu = U\(L\b);

disp('Solucion del sistema de ecuaciones usando factoriacion lu')
disp(x_lu)

% Calculamos el residuo de los dos metodos

% Residuo del sistema 1
r1 = b - A*x;

% Residuo del sistema 2 (que usa factorizacion lu)
r2 = b - A*x_lu;

disp('El residuo del metodo usando solo \ ')
disp(norm(r1,'inf'))

disp('El residuo del metodo usando la factorizacion lu ')
disp(norm(r2,'inf'))







