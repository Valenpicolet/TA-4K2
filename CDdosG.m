close all %Esta l�nea cierra todas las ventanas gr�ficas abiertas en MATLAB. Esto es �til si tienes gr�ficos anteriores que deseas eliminar antes de generar nuevos.
clear all % Esta instrucci�n borra todas las variables de la memoria de MATLAB. En otras palabras, elimina todas las variables que puedan haber sido definidas previamente. Esto se hace para comenzar con un entorno de trabajo limpio.
clc %      Limpia la ventana de comandos en MATLAB, eliminando cualquier texto anterior. Esto mejora la legibilidad y evita la acumulaci�n de resultados anteriores en la ventana de comandos.
format bank % para que a los n�meros chicos los muestre como cero 
l1= 0.70; % valor del primer eslab�n 
l2= 0.30; % valor del segundo eslab�n 
q1 = pi/2; % valor de la primera articulaci�n 
q2 = 0;    % valor de la segunda articulaci�n 
X = l1*cos(q1)+l2*cos(q1+q2) % algoritmo de la cinem�tica directa de un robot de dos grados de libertad
y = l1*sin(q1)+l2*sin(q1+q2)
