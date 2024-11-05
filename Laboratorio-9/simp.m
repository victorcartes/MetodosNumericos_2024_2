function int = simp(funct,a,b,N)
% Esta funcion aproxima la integral de f en el intervalo [a,b] usando la
% regla de Simpson

% Duplicamos
N = 2 * N;

% Tamaño de paso o la longitud de los intervalos
h = (b - a) / N;

% Nodos pares sin los extremos
xpar = a + h * (2:2:(N-1));

% Nodos impares sin los extremos
ximpar = a + h * (1:2:(N-1));

% Regla de cuadratura de Simpson
int = h/3 * ( funct(a) + funct(b) + 2 * sum(funct(xpar)) + 4 * sum(funct(ximpar)) );

end