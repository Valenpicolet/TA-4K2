function resultado = rotSegunEje(angulo,letra)



  if nargin ~= 2
    disp('ERROR: Debe pasar dos argumentos')
  elseif isnumeric(angulo) && ischar(letra)

      angulo_rad = deg2rad(angulo);

      switch letra
        case 'x'
          resultado = [1 0 0 0;...
                       0 cos(angulo_rad) -sin(angulo_rad) 0;...
                       0 sin(angulo_rad) cos(angulo_rad) 0;...
                       0 0 0 1];
        case 'y'
          resultado = [cos(angulo_rad) 0 sin(angulo_rad) 0;...
                       0 1 0 0 ;...
                       -sin(angulo_rad) 0 cos(angulo_rad) 0;...
                       0 0 0 1]
        case  'z'
          resultado = [cos(angulo_rad) -sin(angulo_rad) 0 0; sin(angulo_rad) cos(angulo_rad) 0 0; 0 0 1 0;...
   0 0 0 1];
        otherwise
          disp("Letra no reconocida")
      end

    else
      disp("El primer argumento debe ser un numero y el segundo una letra")
end
