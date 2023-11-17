%Primeros Pasos con Ocatve
% Limpiar variables antes de comenzar el script: limpiar pantalla, borrar variables y cerrar todas las figuras
clc; clear all; close all;

% Ayuda
% help <comando> (se puede ejecutar en la ventana de comandos para saber que hace una función)

% Definicion de vectores
vFila = [1 2 3]
vColumna1 = [4 5 6]' % matriz transpuesta
vColumna2 = [7; 8; 9; 10] % la coma indica que siga en la fila de abajo
vColumna3 = [7;...        % los ... indican que siga en la fila de abajo
             8;...
             9;...
             10]


% Polinomios
pol1 = [5 2 3] % 5x^2 + 2x + 3           -> grado 2
pol2 = [5 0 2 3] % 5x^3 + 0x^2 + 2x + 3  -> grado 3 (coef = 0 no olvidar para ello)

% Matriz 4x4
mat = [11 12 13 14;...
       21 22 23 24;...
       31 32 33 34;...
       41 42 43 44]

% Determinante = 0 -> no tiene inversa
det(mat)
% Matriz Identidad
matId = eye(4)
% Inversa de una Matriz
invMat = inv(matId)
% Multiplicación de Matrices
matId * mat
mat * mat'
mat' * mat  % la multiplicaión de matrices no es conmutativa


% otra forma de def vectores v = valor inicial : paso : valor final
vInicial = 0;
vFinal = 1;
paso = 0.01;
t = vInicial:paso:vFinal; % vFinal - paso si es nec
y = sin(10 * t);
plot(t,y) % graficadora

