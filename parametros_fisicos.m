%% Parametros Fisicos de pata primigenia recordar que no e una funcion es solo un scrip
% y como scrip lo puedo llamar de otro scrip u otro programa , inclusive lo
% puedo llamar de SIMULINK en una función estamos obligados a definir todas
% las variables, la diferencia mas importante es que las variables que se
% tratan serán cargadas en el workspace y en todos los programas o scrips
% que usen las variables inclusive SIMULINK 
% se iran cargando los parametros fisicos del robot pata 
l1=0.7; % longitud del eslabon 1
l2=0.3; % longitud del eslabon 2

%% Actuadores
wmax=[pi/10 pi/12];% maximas  velocidades de los actuadores 