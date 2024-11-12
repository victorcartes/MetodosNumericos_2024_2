%% a) Parte 1

clear
clc

% Primera funcion x^2 = 2
f1 = inline('x.^2 - 2');
df1 = inline('2 * x');

% GRaficamos la funcion f1 para hallar los candidatos a la raiz
xx = -2:0.001:2;
figure;
plot(xx, f1(xx))
grid on 

% Por la grafica sabemos que una raiz estara cerca del punto x0 = 1
r = newton(f1, df1, 1, 1e-12, 1000);

disp("El valor aproximado de la raiz es: ")
disp(r)

%% a) Parte 3

clear
clc

% Primera funcion cos(x) = x
f3 = inline('cos(x) - x');
df3 = inline('sin(x) - 1');

% GRaficamos la funcion f1 para hallar los candidatos a la raiz
xx = 0:0.001:1;
figure;
plot(xx, f3(xx))
grid on 

% Por la grafica sabemos que una raiz estara cerca del punto x0 = 0.7
r = newton(f3, df3, 0.7, 1e-12, 10000);

disp("El valor aproximado de la raiz es: ")
disp(r)

%% c)

clear
clc

f1 = inline('[ x(1).^2 + x(1).*x(2) + x(2).^2 - 1 ; x(2) - x(1).^2 ]');

% testeando nos damos cuenta que (1,1) es una aproximacion inicial buena
x0 = [1; 1];

% Calculamos el Jacobiano de f1
Jf1 = inline('[ 2*x(1) + x(2), x(1) + 2*x(2) ; -2*x(1), 1]');

% Resolvemos el sistema de ecuaciones no lineales
r = newton_sistemas(f1, Jf1, x0, 1e-12, 1000);

format long
disp("El valor aproximado de la raiz es: ")
disp(r)









