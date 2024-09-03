
clear
clc

% Calculo del error absoluto de pi barra
pi_barra = 3.1416;

disp('Error de aproximacion del pi_barra')
err = abs( pi_barra - pi );
disp(err)

suce = pi_barra;
for n = 2:10
    suce = pi_barra * suce; % pi_barra^n
end
% suce sera pi_barra^10

disp('Error de aproximacion de la sucesion del pi_barra')
err = abs( suce - pi^10 );
disp(err)


