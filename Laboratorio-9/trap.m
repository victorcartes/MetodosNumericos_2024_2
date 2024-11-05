function int = trap(funct,a,b,N)
% Esta funcion aproxima la integral de f en el intervalo [a,b] usando la
% regla del trapecio

% Tamaño de paso o la longitud de los intervalos
h = (b - a) / N;

% Nodos sin los extremos (i.e. sin x0 y xN)
x = a + h * (1:N-1);

% Regla de cuadratura de Trapecio
int = h * ( ( funct(a) + funct(b) )/2 + sum(funct(x) ) );

end