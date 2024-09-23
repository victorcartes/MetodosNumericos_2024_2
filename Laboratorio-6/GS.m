n=length(A);
%N=diag(diag(A)); % Jacobi
N=tril(A); % Gauss-Seidel
P=N-A;
x=zeros(n,1);
corr=1;
errest=1;
iter=1;
while errest>tol & iter<maxit
iter=iter+1;
x0=x;
corr0=corr;
x=N\(P*x0+b);
corr=norm(x-x0,inf);
normest=corr/corr0;
if normest>=1
error('norma de la matriz de iteracion > 1')
end
errest=normest/(1-normest)*corr;
end