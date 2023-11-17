function A = denavit_hartenberg(thita, d, a, alfa)
  # Matriz DH
  #
  # ACLARACION: tanto thita como alfa son expresiones en radianes,
  # si se usa parámetros simbólicos que incluyen división de pi
  # es necesario pasar pi a simbólico usando la linea:
  #
  # pi = sym(pi);
  #
  # para asegurar una correcta conversión.

  A = [cos(thita)  -sin(thita)*cos(thita)  sin(thita)*sin(alfa)  a*cos(thita);
       sin(thita)  cos(thita)*cos(alfa)    -cos(thita)*sin(alfa) a*sin(thita);
       0           sin(alfa)               cos(alfa)             d       ;
       0           0                       0                     1
       ];
endfunction
