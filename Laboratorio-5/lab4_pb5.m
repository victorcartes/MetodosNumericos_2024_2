
%% Item a)

clear
clc

n = 10;

% Matriz que nos pidieron
A = ones(n) + n * eye(n);

% Vector b que nos pidieron
b = ones(n,1);

% Usamos el metodo de Cholesky
R = chol(A);

% Vamos a usar R para resolver el sistema Ax=b
y1 = R'\b; % R'y=b 
x1 = R\y1; % Rx=y

% Escrito de una forma mas compacta
x = R\(R'\b);

disp('Solucion del sistema de ecuaciones usando factoriacion de Cholesky')
disp(x)

%% ¿A es definida positiva?
% A es definida positiva, pues pudimos calcular su factoriacion de
% Cholesky.

