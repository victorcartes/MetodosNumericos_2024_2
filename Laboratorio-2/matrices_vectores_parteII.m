%% Tamaños de matrices y vectores
clc
clear

v=[1 2 3 4 5];

A=[1 2 3;4 5 6];

% Tamaño o largo de un vector
tam_vec = length(v)

% Dimensiones de una matriz 
dim_matriz = size(A)

% cantidad de filas de una matriz
cant_filas = size(A,1)

% cantidad de columnas de una matriz
cant_columnas = size(A,2)

%% Extraer datos de un vector
clc
clear

v = 0:2:20;

% Acceder a un posicion
pos_2 = v(2)
pos_7 = v(7)

% modificar 
v(7)=-1;
pos_7_nueva = v(7)

% Accedemos a varias posiciones
pos_1_2_3 = v([1 2 3])
pos_1_al_3 = v(1:3)

% Acceder al ultimo
pos_ultima = v(end)

% Accder a los ultimos tres elementos
pos_ultima_tres = v(end-2:end)

%% Extraer datos de una matriz
clc
clear

A=[1 2 3 4 5 6; 7 8 9 10 11 12];

% Acceder a una posicion
pos_2_3 = A(2, 3)

% Acceder a la ultima posicion de fila y columna
pos_final = A(end, end)

% Acceder a la fila 1 y columnas 1 hasta la 4
pos_1_1_hasta_4_v1 = A(1, [1 2 3 4])
pos_1_1_hasta_4_v2 = A(1, 1:4)

% Acceder a submatrices de A
submatriz = A(1:2, 1:4)





