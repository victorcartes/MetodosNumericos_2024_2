clear
clc 

%% 
clear
clc 

[x1, x2] = raices_cuadratica(1, 5, 1);

disp('El valor de una raiz de la ec. cuadratica es:')
disp(x1)
fprintf('La segunda solucion de la ec. cuadratica es %f \n', x2)

[x1, x2] = raices_cuadratica(1, 1, 0);

disp('El valor de una raiz de la ec. cuadratica es:')
disp(x1)
fprintf('La segunda solucion de la ec. cuadratica es %f \n', x2)

% Por defecto las funciones deben ir al final del codigo

% function output = nombrefuncion(input)
% intrucciones del codigo
% end

function [x1, x2] = raices_cuadratica(a, b, c)
    x1 = (-b + sqrt( b^2 - 4 * a * c) )/ 2 * a;
    x2 = (-b - sqrt( b^2 - 4 * a * c) )/ 2 * a;
end

