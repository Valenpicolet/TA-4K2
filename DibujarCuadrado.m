% Trabajo Obligatorio - Dibujar un cuadrado

  % Backhaus Martin
  % Fontao Alejo
  % Gutierrez Ezequiel
  % Posse Felipe

deltap = [0.01 0.01 0.1];
wmax = [10 10 10];
h = 0.1;
cte = 180/pi;

qt = [0 0 0];
Dqt = [0 0 0];

% Datos del cuadrado
x = [2*ones(1,4) 3 4 5*ones(1,4) 4 3 2];
y = [1 2 3 4*ones(1,4) 3 2 1*ones(1,3) 1];
z = [8*ones(1,13)];

%% Dibujo del cuadrado
for i = 1: length(x) - 1
    pi = [x(i) y(i) z(i)];
    pf = [x(i + 1) y(i + 1) z(i + 1)];

    % Cinematica inversa
    qi = cinematicaInversaRobot3gdl(pi);
    qf = cinematicaInversaRobot3gdl(pf);

    % Verificacion
    % Puede ocurrir que alguna de las configuraciones propuestas por la CI no sea correcta.
    pi1 = cinematicaDirectaRobot3gdl(qi(1,:));
    pi2 = cinematicaDirectaRobot3gdl(qi(2,:));
    pf1 = cinematicaDirectaRobot3gdl(qf(1,:));
    pf2 = cinematicaDirectaRobot3gdl(qf(2,:));

    if (abs(pi1 - pi ) < deltap)
        qiElegida = qi(1,:);
    elseif (abs(pi2 - pi ) < deltap)
        qiElegida = qi(2,:);
    else
        disp('Ninguna configuracion funciona!')
    end


    if (abs(pf1 - pf ) < deltap)
        qfElegida = qf(1,:);
    elseif (abs(pf2 - pf ) < deltap)
        qfElegida = qf(2,:);
    else
        disp('Ninguna configuracion funciona!')
    end

    % Pasaje a grados sexagesimales
    qiElegidaGrados = [qiElegida(1)*cte, qiElegida(2)*cte, qiElegida(3)*cte];
    qfElegidaGrados = [qfElegida(1)*cte, qfElegida(2)*cte, qfElegida(3)*cte];

    % Generador de trayectorias
    [q, Dq, t] = GeneracionDeTrayectorias(qiElegidaGrados, qfElegidaGrados, wmax, h);
    qt = [qt; q];
    Dqt = [Dqt; Dq];
end

% Borrar los ceros de la primer fila
qt = qt(2:end,:);
Dqt = Dqt(2:end,:);

movimientoRobot(qt)

