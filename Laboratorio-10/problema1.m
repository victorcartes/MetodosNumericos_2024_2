
%% b) Parte 1

clear
clc

% Primera funcion x^2 = 2
f1 = @(x) x.^2 - 2;

% GRaficamos la funcion f1 para hallar los candidatos a la raiz
xx = -2:0.001:2;
figure;
plot(xx, f1(xx))
grid on 

% Por la grafica sabemos que una raiz estara en el intervalor [1, 1.5]
r = biseccion(f1, 1, 1.5, 1e-4, 1000);

disp("El valor aproximado de la raiz es: ")
disp(r)

%% b) Parte 2

clear
clc

% Primera funcion x^3 - 3x + 1 = 0
f2 = @(x) x.^3 - 3 * x + 1;

% GRaficamos la funcion f1 para hallar los candidatos a la raiz
xx = 0:0.001:2;
figure;
plot(xx, f2(xx))
grid on 

% Por la grafica sabemos que una raiz estara en el intervalor [0, 1]
r = biseccion(f2, 0, 1, 1e-4, 1000);

disp("El valor aproximado de una raiz es: ")
disp(r)

% Por la grafica sabemos que una raiz estara en el intervalor [1, 2]
r = biseccion(f2, 1, 2, 1e-4, 1000);

disp("El valor aproximado de otra raiz es: ")
disp(r)

%% b) Parte 3

clear
clc

% Primera funcion cos(x) = x
f3 = @(x) cos(x) - x;

% GRaficamos la funcion f1 para hallar los candidatos a la raiz
xx = 0:0.001:1;
figure;
plot(xx, f3(xx))
grid on 

% Por la grafica sabemos que una raiz estara en el intervalor [0, 1]
r = biseccion(f3, 0, 1, 1e-4, 1000);

disp("El valor aproximado de la raiz es: ")
disp(r)




