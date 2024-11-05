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

% Por la grafica sabemos que una raiz estara cerca del punto x0 = 1
r = fzero(f1, 1);

disp("El valor aproximado de la raiz es: ")
disp(r)

%% a) Parte 3

clear
clc

% Primera funcion cos(x) = x
f3 = @(x) cos(x) - x;


% GRaficamos la funcion f1 para hallar los candidatos a la raiz
xx = 0:0.001:1;
figure;
plot(xx, f3(xx))
grid on 

% Por la grafica sabemos que una raiz estara cerca del punto x0 = 0.7
r = fzero(f3, 0.7);

disp("El valor aproximado de la raiz es: ")
disp(r)


