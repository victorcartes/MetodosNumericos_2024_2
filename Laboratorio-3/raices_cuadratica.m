function [x1, x2] = raices_cuadratica(a, b, c)
% aqui pueden escribir la ayuda o comentarios
% los cuales se imprimiran al usar el comando help

% Otra cosa (no aparece al usar help)

x1 = (-b + sqrt( b^2 - 4 * a * c) )/ 2 * a;
x2 = (-b - sqrt( b^2 - 4 * a * c) )/ 2 * a;

end
