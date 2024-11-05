
%% b)

% datos
x = 0:10; % = 0, 1, 2, ..., 10
y = sin(x);

% Polinomio de grado 5
c5 = polyfit(x,y,5);

% Polinomio de grado 10 (pol. de interpolacion)
c10 = polyfit(x,y,10);

% Graficos
xplot = 0:0.01:10;
pol_5 = polyval(c5, xplot); % El pol. de grado 5 evaluado en xplot
pol_10 = polyval(c10, xplot); 

figure;
plot(x, y, 'o', 'LineWidth', 3);
hold on
plot(xplot,pol_5,xplot,pol_10)
hold off
legend('Datos','Pol grado 5', 'Pol grado 10')

%% c)

x = -5:5; 
y = 1./(1 + x.^2);

% Polinomio de grado 6
c6 = polyfit(x, y, 6);

% Polinomio de grado 10 (pol. de interpolacion)
c10 = polyfit(x, y, 10);

% Graficos
xplot = -5:0.01:5;
pol_6 = polyval(c6, xplot); 
pol_10 = polyval(c10, xplot); 

figure;
plot(x, y, 'o', 'LineWidth', 3);
hold on
plot(xplot, pol_6, xplot, pol_10)
hold off
legend('Datos','Pol grado 6', 'Pol grado 10')

%% e)

x = -5:5; 
y = 1./(1 + x.^2);

% Polinomio spline
% pp = spline(x,y);

% Polinomio de grado 10 (pol. de interpolacion)
c10 = polyfit(x, y, 10);

% Graficos
xplot = -5:0.01:5;
pol_10 = polyval(c10, xplot);

% Interpolador spline evaluado en xplot
s = spline(x, y, xplot);

figure;
plot(x, y, 'o', 'LineWidth', 3);
hold on
plot(xplot, s, xplot, pol_10)
hold off
legend('Datos','Spline Cubico', 'Pol interpolacion')

