%% Funcion que estan en matlab
clc
clear
% - Exponencial:

% e^2
num_e_2 = exp(2) 

% exponencial de un vector
v = [0 1 -1];
num_e_vec = exp(v)

 % - Seno
 num_sin = sin(v)

% - Coseno
num_cos = cos(v)

% - Tangente
num_tan = tan(v)

% - Arcotangente
num_arcotan = atan(v)

% - raiz cuadrada
num_raiz = sqrt(v)

% - Valor absoluto
num_val_abs = abs(v)

% - Logaritmo natural
num_ln = log(v)

%% Funciones que podemos definir
clc
clear

f = @(x) exp(x.^2) .* sin(x)

% Valor de f(1)
val_1 = f(1)

% Valor de f(v)
v = [0 1 2]
val_v = f(v)












