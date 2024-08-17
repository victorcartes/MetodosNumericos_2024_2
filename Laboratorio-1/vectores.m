    %% Limpiar la terminal
% Se limpia el Workspace
clear 

% Se limpia el Command Window
clc

%% Ingresar un vector

% Vectores filas
u = [2 3 4 5 6]
v = [2,3,4,5,6]

% Vector columna
w = [2;3;4;5;6]

%% Operaciones basicas

u = [1, 2, 3, 4, 5];
v = [6, 7, 8, 9, 10];

% sumamos los vectores
sum = u + v

% restamos los vectores
resta = u - v

% multiplicar por escalar
mult_escalar= 3 * u

% multiplicar termino a termino
mult = u .* v

% divicion termino a termino
div = u ./ v

% elevar termino a termino
elevar = u .^ 3

% transpuesta de un vector
transpuesta = u'

%% Generacion de vectores
clear
clc
% Generacion de numeros consecutivos
u = -3:6 % esto es lo mismo que -3:1:6

% Generacion de numeros consecutivos decrecientes
v = 6:-1:0

% Generar vectores usando un incremento fraccionario
w = 0:0.1:1

% Generamos un vector lleno de ceros
u1 = zeros(1,5)
u2 = zeros(5,1)

% Generamos un vector lleno de unos
v1 = ones(1,5)
v2 = ones(5,1)

%% MAtrices
clear
clc

% Creamos la primera matriz cuadrada
A = [1 2; 3 4]

% Creamos un matriz no cuadrada
B = [1 2 3; 4 5 6]

% Todas las operaciones basicas que vimos para vectores se pueden hacer
% para matrices, y la sisntexis usada es la misma en ambos casos.

% Operaciones extras que tienen las matrices
C = [5 6; 7 8];

% Multiplicacion de matrices usual
multi = A * C

% Potenciacion usual de matrices
poten = A ^ 3 % = A * A * A

%% Generacion de matrices
clear
clc

% matriz identidad
identidad = eye(5)

% Generamos una amtriz llena de ceros
Z1 = zeros(3,4)
Z2 = zeros(4) % matriz cuadrada con 4 filas y columnas

% Generamos una amtriz llena de unos
U1 = ones(3,4)
U2 = ones(4) % matriz cuadrada con 4 filas y columnas

% Generamos matrices aleatorias entre 0 y 1
R1 = rand(3,4)
R2 = rand(4) % matriz cuadrada

%% Operaciones con matrices
clear
clc
A = [1 2; 3 4];

% calculo del determinante
determinante = det(A)

% Calculo de la matriz inversa
inversa = inv(A)

% Calculo de valores propios
val_prop = eig(A)

% Determinal la diagonal de una matriz
diagonal = diag(A)

% Se puede usar esta misma funcion para generar un matriz con diagonal un vector
matriz_diag = diag(diagonal)






