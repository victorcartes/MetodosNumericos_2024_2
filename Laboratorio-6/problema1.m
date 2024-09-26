

clc
clear

%% item a)

% Vamos a definir a B
n = 1000;

B = [2*eye(n) -eye(n); -eye(n) 2*eye(n)];

%% item b)

% Guarda los datos no nulos de B
A = sparse(B);

whos
% Respuesta del comando whos:
  % 
  % Name         Size                 Bytes  Class     Attributes
  % 
  % A         2000x2000               80008  double    sparse    
  % B         2000x2000            32000000  double              
  % n            1x1                      8  double 

%% item c)
clc

b = (1:2000)';

disp('Tiempo que se demora en resolver el sistema completo')
t_full = tic;
% Vamos a resolver el sistema completo
x_full = B \ b;
toc(t_full);

disp('Tiempo que se demora en resolver el sistema esparcido')
t_esparcido = tic;
% Resolvemos el 
x_esparcido = A \ b;
toc(t_esparcido);

%Respuesta:
% Tiempo que se demora en resolver el sistema completo
% Elapsed time is 0.030602 seconds.
% Tiempo que se demora en resolver el sistema esparcido
% Elapsed time is 0.000261 seconds.


%% item d)
clc
% Vamos a obtener la matriz D
D = diag(diag(A));

% Obtenemos las matrices triangulares
L = -1*(tril(A) - D);
U = -1*(triu(A) - D);

% Obtenemos la matriz J
J = inv(D) * (L + U);

whos

% Respuesta whos
  % Name                Size                 Bytes  Class     Attributes
  % 
  % A                2000x2000               80008  double    sparse    
  % B                2000x2000            32000000  double              
  % D                2000x2000               48008  double    sparse    
  % J                2000x2000               48008  double    sparse    
  % L                2000x2000               32008  double    sparse    
  % U                2000x2000               32008  double    sparse    
  % b                2000x1                  16000  double              
  % n                   1x1                      8  double              
  % t_esparcido         1x1                      8  uint64              
  % t_full              1x1                      8  uint64              
  % x_esparcido      2000x1                  16000  double              
  % x_full           2000x1                  16000  double  

%% item e)
clc

figure
spy(A);

figure
spy(D);

figure
spy(J);

figure
spy;

%% item f)

% B = [2*eye(n) -eye(n); -eye(n) 2*eye(n)];
% A = sparse(B);

% Definimos la matriz esparcida A sin usar la matriz B
A_new = [2*speye(n) -speye(n); -speye(n) 2*speye(n)];

% speye genera la matriz identidad esparcida


%% g)

% Genera la matriz completa a partir de la matriz esparcida
B_full = full(A_new);