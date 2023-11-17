function movimientoRobot(q)
    % Eslabones
    d1 = 15;
    a2 = 7;
    a3 = 3;

    % Articulaciones
    q1 = q(:,1);
    q2 = q(:,2);
    q3 = q(:,3);

    % Creacion del grafico
    figure;
    hold on; grid on;
    xlabel('X');
    ylabel('Y');
    zlabel('Z');

    title('Robot 3gdl')

    eslabon1 = plot3(0,0,0);
    eslabon2 = plot3(0,0,0);
    eslabon3 = plot3(0,0,0);
    base = plot3(0,0,0);
    articulacion2I = plot3(0,0,0);
    articulacion3I = plot3(0,0,0);
    efector_finalI = plot3(0,0,0);

    axis([-2 10 -2 10 0 18]);

    for i = 1:length(q1)
        articulacion2 = [0, 0, d1];
        articulacion3 = [a2*cosd(q1(i))*cosd(q2(i)), a2*sind(q1(i))*cosd(q2(i)), 7*sind(q2(i)) + d1];
        herramienta_x = -a3*sind(q2(i))*sind(q3(i))*cosd(q1(i)) + a3*cosd(q1(i))*cosd(q2(i))*cosd(q3(i)) + a2*cosd(q1(i))*cosd(q2(i));
        herramienta_y = -a3*sind(q1(i))*sind(q2(i))*sind(q3(i)) + a3*sind(q1(i))*cosd(q2(i))*cosd(q3(i)) + a2*sind(q1(i))*cosd(q2(i));
        herramienta_z = a3*sind(q2(i))*cosd(q3(i)) + a2*sind(q2(i)) + a3*sind(q3(i))*cosd(q2(i)) + d1;
        herramienta = [herramienta_x, herramienta_y, herramienta_z];
        set(eslabon1, 'XData', [0 articulacion2(1)], 'YData', [0 articulacion2(2)], 'ZData', [0 articulacion2(3)]);
        set(eslabon2, 'XData', [articulacion2(1) articulacion3(1)], 'YData', [articulacion2(2) articulacion3(2)], 'ZData', [articulacion2(3) articulacion3(3)]);
        set(eslabon3, 'XData', [articulacion3(1) herramienta(1)], 'YData', [articulacion3(2) herramienta(2)], 'ZData', [articulacion3(3) herramienta(3)]);
        set(base, 'XData', 0, 'YData', 0, 'ZData', 0);
        set(articulacion2I, 'XData', articulacion2(1), 'YData', articulacion2(2), 'ZData', articulacion2(3));
        set(articulacion3I, 'XData', articulacion3(1), 'YData', articulacion3(2), 'ZData', articulacion3(3));
        set(efector_finalI, 'XData', herramienta(1), 'YData', herramienta(2), 'ZData', herramienta(3));

        plot3(herramienta_x, herramienta_y, herramienta_z, 'bo', 'MarkerSize', 7, 'MarkerFaceColor', 'y');
        drawnow;
        pause(0.4);
    end
end
