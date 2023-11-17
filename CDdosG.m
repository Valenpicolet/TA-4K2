close all %Esta línea cierra todas las ventanas gráficas abiertas en MATLAB. Esto es útil si tienes gráficos anteriores que deseas eliminar antes de generar nuevos.
clear all % Esta instrucción borra todas las variables de la memoria de MATLAB. En otras palabras, elimina todas las variables que puedan haber sido definidas previamente. Esto se hace para comenzar con un entorno de trabajo limpio.
clc %      Limpia la ventana de comandos en MATLAB, eliminando cualquier texto anterior. Esto mejora la legibilidad y evita la acumulación de resultados anteriores en la ventana de comandos.
format bank % para que a los números chicos los muestre como cero 
l1= 0.70; % valor del primer eslabón 
l2= 0.30; % valor del segundo eslabón 
q1 = pi/2; % valor de la primera articulación 
q2 = 0;    % valor de la segunda articulación 
X = l1*cos(q1)+l2*cos(q1+q2) % algoritmo de la cinemática directa de un robot de dos grados de libertad
y = l1*sin(q1)+l2*sin(q1+q2)
