function p  = cinematicaDirectaRobot3gdl(q)

  %Constantes
  l1 = 15;
  l2 = 7;
  l3 = 3;

  %Calculo de la cinematica Directa
  x = (l2*cos(q(2))+l3*cos(q(2)+q(3)))*cos(q(1));
  y = (l2*cos(q(2))+l3*cos(q(2)+q(3)))*sin(q(1));
  z = l1+l2*sin(q(2))+l3*sin(q(2)+q(3));

  p = [x y z];
