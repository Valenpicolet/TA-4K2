function [p]=CDirecta(q) % cundo la llamamos hay que entrar los datos así: CDirecta([pi/2,0])
l1= 0.70; % si el robot cambia de tamaño podemos cambiar l1 y l2
l2= 0.30;

%X = l1*cos(q1)+l2*cos(q1+q2) del programa anterior para guiarnos porque
%ahora son vectores
%y = l1*sin(q1)+l2*sin(q1+q2)

p(1)= l1*cos(q(1))+l2*cos(q(1)+q(2));
p(2)= l1*sin(q(1))+l2*sin(q(1)+q(2));