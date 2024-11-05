
%% a)
clear
clc

f = inline('exp(-x)'); % = e^-x

% Limites de integracion
a = 0; b = 1;

% La cantidad de subintervalos
N = 10:10:100;

% El valor exacto de la integral es
exact = 1 - exp(-1);

% Guardar los errores de aproximacion
err = zeros(1,length(N));

for i = 1:length(N)
    err(i) = abs(exact - trap(f, a, b, N(i)) );
end

%% b)

figure;
loglog(N, err, N, (1 ./ (N.^2)))
xlabel('Cantidad de intervalos')
ylabel('El error cometido')
legend('El error', 'Funcion 1/N^2')
grid on


