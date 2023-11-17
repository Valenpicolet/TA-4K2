%% Matriz de D-H
%Ejemplo Barrientos pag 100.
close all; clear all; clc
syms q1 q4 d2 d3 real 
 
% Parámetros de DH Tabla 4.1
q=[q1 pi/2 0 q4];
d=[1.2 d2 d3 1.3];
a=[0 0 0 0];
alfa=[0 pi/2 0 0];
 
%%
i=1;
A01=[cos(q(i)) -cos(alfa(i))*sin(q(i))  sin(alfa(i))*sin(q(i)) a(i)*cos(q(i));...
   sin(q(i))  cos(alfa(i))*cos(q(i)) -sin(alfa(i))*cos(q(i)) a(i)*sin(q(i));...
   0          sin(alfa(i))            cos(alfa(i))           d(i);...
   0 0 0 1]
 
i=2;
A12=[cos(q(i)) -cos(alfa(i))*sin(q(i))  sin(alfa(i))*sin(q(i)) a(i)*cos(q(i));...
   sin(q(i))  cos(alfa(i))*cos(q(i)) -sin(alfa(i))*cos(q(i)) a(i)*sin(q(i));...
   0          sin(alfa(i))            cos(alfa(i))           d(i);...
   0 0 0 1]
 
i=3;
A23=[cos(q(i)) -cos(alfa(i))*sin(q(i))  sin(alfa(i))*sin(q(i)) a(i)*cos(q(i));...
   sin(q(i))  cos(alfa(i))*cos(q(i)) -sin(alfa(i))*cos(q(i)) a(i)*sin(q(i));...
   0          sin(alfa(i))            cos(alfa(i))           d(i);...
   0 0 0 1]
 
i=4;
A34=[cos(q(i)) -cos(alfa(i))*sin(q(i))  sin(alfa(i))*sin(q(i)) a(i)*cos(q(i));...
   sin(q(i))  cos(alfa(i))*cos(q(i)) -sin(alfa(i))*cos(q(i)) a(i)*sin(q(i));...
   0          sin(alfa(i))            cos(alfa(i))           d(i);...
   0 0 0 1]
 
%%

T=A01*A12*A23*A34
 
%% Pruebas 
 
q1=0;q4=0;d2=0;d3=0; 
eval(T) % posición en el origen
 

%%

q1=-pi/4;q4=0;d2=0.8;d3=0.7; 
eval(T)

%%



q1=pi/2;q4=0;d2=0.8;d3=0.7; % las dos articulaciones extendidas 
eval(T)

%%

q1=pi;q4=0;d2=0.8;d3=0.7; % las dos articulaciones extendidas 
eval(T)


%% Evaluación de una trayectoria.
q1=0;d2=0;d3=0
while q1<=2*pi 
    eval(T)
    pause(0.1);
    q1=q1+0.05;
end
 
%% Evolución de la posición del efector final
q1=0;
i=1;
while q1<=2*pi
    Aux=eval(T);
    % De cada paso tomo la posición
    x(i)=Aux(1,4);        %Eje x
    y(i)=Aux(2,4);        %Eje y
    z(i)=Aux(3,4);        %Eje z
    q1=q1+0.05;
    i=i+1;
end
 
plot3(x,y,z);grid
 
%% Evolución de la posición del efector final
q1=0;
d2=0;
i=1;
while q1<=2*pi
    Aux=eval(T);
    % De cada paso tomo la posición
    x(i)=Aux(1,4);        %Eje x
    y(i)=Aux(2,4);        %Eje y
    z(i)=Aux(3,4);        %Eje z
    q1=q1+0.05;
    d2=d2+0.1;
    i=i+1;
end
 
plot3(x,y,z);grid
xlabel('x');ylabel('y');zlabel('z')
    
%% Evolución de la posición del efector final
q1=0;
d2=0;
d3=0;
i=1;
while q1<=2*pi
    Aux=eval(T);
    % De cada paso tomo la posición
    x(i)=Aux(1,4);        %Eje x
    y(i)=Aux(2,4);        %Eje y
    z(i)=Aux(3,4);        %Eje z
    q1=q1+0.05;
    d2=d2+0.1;
    d3=d3+0.05;
    i=i+1;
end
 
plot3(x,y,z);grid
xlabel('x');ylabel('y');zlabel('z')
