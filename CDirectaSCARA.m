function [p]=CDirectaSCARA(q) % cundo la llamamos hay que entrar los datos as�: CDirectaSCARA([pi/2,0,d])
l1= 0.70; % si el robot cambia de tama�o podemos cambiar l1 y l2
l2= 0.30;
D=1
%X = l1*cos(q1)+l2*cos(q1+q2) del programa anterior para guiarnos porque
%ahora son vectores
%y = l1*sin(q1)+l2*sin(q1+q2)

p(1)= rad2deg(l1*cos(q(1))+l2*cos(q(1)+q(2)));
p(2)= l1*sin(q(1))+l2*sin(q(1)+q(2));
p(3)= D-q(3);
