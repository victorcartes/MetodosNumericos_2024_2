function raiz = newton_sistemas(f, Df, x0, tol, maxit)

k = 0;
raiz = x0;
corr = tol + 1;
while (k <= maxit) && (norm(corr,'inf') > tol)
    k = k + 1;
    xk = raiz;
    fxk = feval(f,xk);
    Dfxk = feval(Df,xk);
    if (det(Dfxk) == 0)
	    error('La matriz Jacobiana de la funcion no tiene inversa.')
    end
    corr = Dfxk \ fxk;
    raiz = xk - corr;
end

if (norm(corr,'inf') > tol)
    error('Se excedio el numero maximo de iteraciones.')
end

end