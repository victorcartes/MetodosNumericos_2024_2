function A = minpolinomio(n, m)
% n es el grado del polinomio, y m es la cantidad de subintervalos en los
% cuales partimos el intervalor [0,1]

h = 1 / m;
% genera un vector que me pieza en 0, crea incrementos de tamaño h, hsata 1
t = (0:h:1)';  

% Definir la matriz A
A = ones(length(t), n + 1);

% LLenado de las columnas de la matriz A
for i=1:n
    A(:,i) = t.^(n - (i - 1)); % = t^n-(i-1)
end

end