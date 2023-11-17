function q = cinematicaInversaRobot3gdl(p)

  % Constantes
  l1 = 15;
  l2 = 7;
  l3 = 3;

  % Variables definidas por el usuario
  disp(p)
  x = p(1);
  y = p(2);
  z = p(3);

  % Calculo de la cinematica inversa

  q1 = atan2(y,x);


  var_aux = (x^2+y^2+(z-l1)^2-l2^2-l3^2)/(2*l2*l3)

  q31 = atan2(sqrt(1-var_aux^2),var_aux);
  q21 = atan2(z - l1,sqrt(x^2 + y^2)) - atan2(l3*sin(q31),l2+l3*cos(q31));

  q32 = atan2(-sqrt(1-var_aux^2),var_aux);
  q22 = atan2(z - l1,sqrt(x^2 + y^2)) - atan2(l3*sin(q32),l2+l3*cos(q32));

  q = [q1 q21 q31 ; q1 q22 q32];

end
