% Primeros Gráficos
% Limpiar variables antes de comenzar el script: limpiar pantalla, borrar variables y cerrar todas las figuras
clc; clear all; close all;

% Generar el vector que represente el ángulo alfa
alfaInicial = -pi;
alfaFinal = pi;
alfaPaso = 1e-3;
alfa = alfaInicial:alfaPaso:alfaFinal; % vFinal - paso si es nec

% Generar funciones trigonométricas cos y sen
cosAlfa=cos(alfa);
senAlfa=sin(3*alfa);

% Graficar las Funciones: plot(pares x,y , pares x1,y1)
plot(alfa,cosAlfa) % graficadora
hold on;           % permite unir dos graficos
plot(alfa,senAlfa)
plot(alfa,cosAlfa,...
     alfa,senAlfa,...
     alfa,senAlfa + cosAlfa)
% Para visualizar un elemento del vector = vector(indice)
% Para visualizar el último elemento del vector = vector(end) = size(vector) o length(vector)
% Para visualizar el primer elemento del vector != vector(0) y si vector(1)

% Título del Gráfico
title('Funciones Trigonométricas')

% Nombre de Ejes
xlabel('ang [rad]')
ylabel('amplitud')

% Leyendas de cada función
legend('cos(\alpha)', 'sen(\alpha)', 'cos(\alpha) + sen(\alpha)')

% Grosor de las líneas del gráfico
% plot(pares x,y,PARAMETROS , pares x1,y1,PARAMETROS1)
% close all;
plot(alfa,cosAlfa,'-.r',...
     alfa,senAlfa,'linewidth',2,...
     alfa,senAlfa + cosAlfa)
legend('cos(\alpha)', 'sen(\alpha)', 'cos(\alpha) + sen(\alpha)')


% Guardar el grafico
% archivo > guardar ó control+S > opciones de guardado '.gif'

% Dividir el lienzo
% subplot(filas,columnas,indice)
subplot(2,2,1)
  plot(alfa, cosAlfa, 'linewidth', 2)
  grid
  xlabel('ang [rad]')
  ylabel('amplitud []')
  title('Función Coseno de \alpha')
subplot(2,2,3)
  plot(alfa, senAlfa, '-.g', 'linewidth', 2)
  grid
  xlabel('ang [rad]')
  ylabel('amplitud []')
  title('Función Seno de \alpha')

subplot(2,2,4)
  plot(alfa, cosAlfa + senAlfa, '--r', 'linewidth', 2)
  grid
  xlabel('ang [rad]')
  ylabel('amplitud []')
  title('Función Coseno(\alpha) + Seno(\alpha)')

% Finalización del script
disp('Terminado')
