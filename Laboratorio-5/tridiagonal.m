function A = tridiagonal(n,a,b,c)
% Esta funcion genera una matriz tridiagonal de tamaño n.
% Donde en la diagonal principal toma el valor de a.
% En la diagonal superior toma el valor de b.
% En la diagonal inferior toma el valor de c.

% Solo es una matriz diagonal
A = a * eye(n);
% Otra opcion es usar esto: a * diag(ones(1,n))

% Agregamos la diagonal superior
A = A + diag(b * ones(1,n-1), 1);

% Agregamos la diagonal inferior
A = A + diag(c * ones(1,n-1), -1);


end