
%% 
clc
clear

%% a)

f = inline('x');

% Calculamos la integral usando la regla de Trapecio
I = trap(f,0,2,100);

disp('El valor aproximado de la integral es:')
disp(I)

%% b)
clear
clc
format long

% - x^2

% La funcion
f1 = inline('x.^2');
% Los limites de integracion
a = 0; b = 3;
% La cantidad de subintervalos
N = [10 20 40 80];

for i = 1:length(N)
    I = trap(f1, a, b, N(i));
    fprintf('Usando N = %d intervalos, obtenemos la siguiente aproximacion\n',N(i));
    disp(I);
end

%% c)

% Testear la funcion
clear
clc
f = inline('x');

% Calculamos la integral usando la regla de Trapecio
I = simp(f,0,2,10);

disp('El valor aproximado de la integral es:')
disp(I)

% Usamos la funcion para aproximar la primera integral de item b)

% La funcion
f1 = inline('x.^2');
% Los limites de integracion
a = 0; b = 3;
% La cantidad de subintervalos
N = [10 20 40 80];

for i = 1:length(N)
    I = simp(f1, a, b, N(i));
    fprintf('Usando N = %d intervalos, obtenemos la siguiente aproximacion\n',N(i));
    disp(I);
end

