function q = CInversaSCARA(p)  % La función se llama como: CInversaSCARA([x, y, z])

  % Parámetros fijos del robot
  l1 = 0.7;
  l2 = 0.3;
  D = 1;

  % Variables pasadas por parámetro
  %disp(p)
  x = p(1);
  y = p(2);
  z = p(3);

 % Calculos de Inversa SCARA
 % Se devuelven las dos configuraciones posibles.

 % Calculo cosq2
 cosq2 = (x^2+y^2-l1^2-l2^2)/(2*l2*l1);
% Ajuste cosq2
if(cosq2>1);
    cosq2=1;
end

if(cosq2<-1);
    cosq2=-1;
end

beta = atan(y/x);
% Ajuste de beta
if ((x<0 && y>=0) ||(x<0 && y<0))
    beta = beta + pi;
end
if (x > 0 && y < 0)
    beta = beta + 2 * pi;
end

% Calculo del seno que devuelve dos valores
senq2(1)=sqrt(1-cosq2^2); % Raiz Positiva
senq2(2)=-sqrt(1-cosq2^2);% Raiz negativa

% Configuración 1
c1_q2 = atan2(senq2(1),cosq2);
alfa = atan2((l2*senq2(1)),(l1+l2*cosq2));% aparecen dos valores de alfa debido a que el senq2 tiene dos valores el positivo y el negativo
c1_q1 = beta - alfa;

% Configuracion 2: se calcula solo si senq2 pos y neg son Distintos
if senq2(2) ~= senq2(1)
  c2_q2 = atan2(senq2(2),cosq2);
  alfa = atan2((l2*senq2(2)),(l1+l2*cosq2));% aparecen dos valores de alfa debido a que el senq2 tiene dos valores el positivo y el negativo
  c2_q1 = beta - alfa;
else
  c2_q1 = c1_q1;
  c2_q2 = c1_q2;
end

% Correccion para que el 360º sea 0º
if (c1_q1 == 2 * pi)
  c1_q1 = 0;
end
if (c2_q1 == 2 * pi)
    c2_q1 = 0;
end

 % SCARA articulacion prismatica
  d = D - z;



c1 = [rad2deg(real(c1_q1)), rad2deg(real(c1_q2)), d];
c2 = [rad2deg(real(c2_q1)), rad2deg((c2_q2)), d];
c = [c1;...
         c2]

paux1=CDirecta_03([c1_q1, c1_q2]);
paux2=CDirecta_03([c2_q1, c2_q2]);
p = [x,y]

%disp(paux1)
%disp(paux2)
%disp(p)

    if sum(abs(p-paux1))<e
        if sum(abs(p-paux2))<=sum(abs(p-paux1))
            q=[c2_q1 c2_q2];
        else
                  disp('la combinacion siguiente es elegida');rad2deg([c1_q1 c1_q2])
            q=[rad2deg(real(c1_q1)), rad2deg(real(c1_q2))];
        end

    else
        if sum(abs(p-paux2))<e
                     disp('la combinacion siguiente es elegida');rad2deg([c2_q1 c2_q2])
            q=[rad2deg(real(c2_q1)), rad2deg(real(c2_q2))];
        else
        disp('ERROR. Punto  fuera de alcance')
        q=[NaN NaN]; % not a number , no es un n�mero ra hacer notar que hay un error en el ingreo y que no se pueden calcular los q�s

        end
    end
end % este end se relaciona con el if sum(abs(p-paux2))<e & sum(abs(p-paux1))<e
%rad2geg convierte radianes a decimales
% si no coloco esa función nos devolvera radianes








