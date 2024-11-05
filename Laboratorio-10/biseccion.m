function root = biseccion(f, a, b, tol, maxiter)
% Esta funcion retornar una aproximacion de la solucion a la ecuacion f(x)
% = 0 con x en el intervalo [a, b]. Se usa el metodo de biseccion, se realizaran 
% una cantidad a lo mas de maxiter iteraciones y tendremos una tolerancia
% del error de a los mas tol.

% Swap 
if b < a
    aux = a;
    a = b;
    b = aux;
end
% LA idea es siempre tener que a < b

% Casos triviales
if f(a) * f(b) > 0
    error('No existe una raiz de f(x)=0 en el intervalo [a,b]');
end
if f(a) == 0
    root = a;
    return
end
if f(b) == 0
    root = b;
    return
end

% Con esto estamos en el caso f(a)*f(b) < 0

iter = 0;
xa = a; xb = b;

while ( xb - xa ) / 2 > tol && iter < maxiter 
    xr = (xa + xb) / 2;
    fa = f(a);
    fr = f(xr);
    % Encontramos la raiz
    if fa * fr == 0
        root = xr;
        return
    end
    % Ajustamos el intervalo para encontrar la raiz
    if fa * fr < 0
        xb = xr;
    else
        xa = xr;
    end
    % Incrementamos la variable de iteraciones
    iter = iter + 1;
end

% La aproximacion de la raiz es
root = (xa + xb) / 2;

end





