clear
clc

% Valor de comparacion
x = 0.5;

% derivada del sin
der_f = cos(x);

% Guardamos el calculo del error
y = zeros(1,100);

% Aproximar la derivada del sin
for p = 1:100
    h = 10^(-p);
    % Calcular la aproximacion
    aux = ( sin(x + h) - sin(x) ) / h ;
    % Calculo del error de aproximacion
    y(p) = abs( aux - der_f );
end

% Grafico del error
p = 1:100;
h = 10.^(-p);
plot(h,y)
xlabel('Valor de h')
ylabel('Error')




