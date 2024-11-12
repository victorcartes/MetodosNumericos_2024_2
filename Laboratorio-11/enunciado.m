
%% EDO 1

clear
clc

% y' = f(t, y)
f = @(t, y) y;

% Intervalo de la solucion
t0 = 0;
tf = 1.5;

% condicion inicial
y0 = 1;

% Resolvemos la edo
[t, y]=ode45(f, [t0 tf], y0);

% Graficamos la solucion de la edo
figure;
plot(t, y);

%% EDO 2

clear
clc


% y' = f(t, y)
f = @(t, y) y;

% Intervalo de la solucion
t0 = 0;
tf = 1.5;

% condicion inicial
y0 = 1;

% Le damos manualmente a la funcion una tolerancia 
options = odeset('AbsTol',1e-6);

% Resolvemos la edo
[t, y]=ode45(f, [t0 tf], y0, options);

% Graficamos la solucion de la edo
figure;
plot(t, y);

%% EDO 3

clear
clc

% Y' = F(t, Y)
F = @(t, y) [ y(2) ; -y(1)];

% Intervalo de la solucion
t0 = 0;
tf = 2 * pi;

% condicion inicial
y0 = [1 ; 0];

% Resolvemos la edo
[t, y]=ode45(F, [t0 tf], y0);


% Graficamos la solucion de la edo
figure;
plot(t, y(:,1), t, y(:,2));
legend('x(t)', 'y(t)');








