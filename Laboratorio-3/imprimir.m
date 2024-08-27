
%% Comando disp
clc

% imprime la palabra Texto en la pantalla
disp('Texto ')

a= 4;
disp('disp permite mostrar un numero guardado en una variable ')
disp(a)

v = [1 2 3 4];
disp('disp permite mostrar un vector guardado en una variable ')
disp(v)

A = 2 * eye(2);
disp('disp permite mostrar una matriz')
disp(A)

%% Comando fprintf 

clc
fprintf('Algun texto \n Otro salto de linea \n')

a = pi;
fprintf('Numero: %f \n', a)

fprintf('Pi con 3 decimales: %.3f \n', a)

fprintf('Pi con desimales por defecto: %g \n', a)






