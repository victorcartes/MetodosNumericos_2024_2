function [x, iter] = jacobi(A, b, maxit, tol)
% Esta funcion encuentra una solucion aproximada al sistema Ax=b, y usa el
% metodo de Jacobi para ello.

n = length(A);

% Las matrices del metodo de Jacobi
N = diag(diag(A)); 
P = N-A;

% Para inicializar el metodo iterativo
x = N\(P*zeros(n,1)+b); % = x0
corr = norm(x,'inf');
errest = 1;
iter = 1;

while errest > tol && iter < maxit
    % Aumentando las iteraciones
    iter = iter + 1;
    % Guardo los valores de la iteracion anterior
    x0 = x;
    corr0 = corr;
    % Calcula el x^{k}
    x = N\(P*x0+b);
    % Calculando la distancia ente x^{k} y x^{k-1}
    corr = norm(x-x0,'inf');
    % Calculo del m_k
    normest = corr / corr0;
    % Aplicamos el criterio de detencion
    if normest > 1
        error('norma de la matriz de iteracion > 1')
    end
    errest = normest / (1 - normest) * corr;
end

end

