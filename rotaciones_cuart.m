%%matrices de rotaci�n

close all; clear all; clc

%ROTACI�N EN EL EJE Z

syms gama

gama= pi/2 % 90 GRADOS

rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1]

p=[3 0 0 1]'

pp = rotz*p

%%
close all; clear all; clc

gama= -pi/2;

rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1]
%%

p=[3 0 0 1]'

pp = rotz*p


%% roraci�n en el eje Y ***********************************************

close all; clear all; clc

syms beta

beta= pi/2

roty=[cos(beta) 0 sin(beta)  0;...
   0 1 0 0;...
   -sin(beta) 0 cos(beta) 0;...
   0 0 0 1]

%%

p=[3 0 0 1]'

pp = roty*p


%% si ahora el punto p esta originalmente en p=( 0,0,3,1)  y le aplicamos la misma rotaci�n

p=[0 0 3 1]'
ppp= roty*p

%% rotaci�n en X

close all; clear all; clc

syms alfa

alfa= pi/2

rotx=[1 0 0 0;...
   0 cos(alfa) -sin(alfa) 0;...
   0 sin(alfa) cos(alfa) 0;...
   0 0 0 1]

%%

p=[0 1 0 1]'

pp = rotx*p


%% MATRIZ DE TRASLACI�N 

syms dx

trax=[1 0 0 dx;...
   0 1 0 0;...
   0 0 1 0;...
   0 0 0 1]

%%  le damos a dx = 3 

dx =3

eval (trax)

%%
syms gama

gama= pi/2

rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1]



%%

syms dx

dx=3

trax=[1 0 0 dx;...
   0 1 0 0;...
   0 0 1 0;...
   0 0 0 1]

rotz*trax


p=[0 0 1 1]'


rotz*trax*p
%% rotaciones sucesivas ************************************************

%ROTACI�N EN EL EJE Z

syms gama

gama= pi/2 % 90 GRADOS

rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1]

%%

p=[3 0 0 1]'


%%
pp = rotz*p

%%

%rotaci�n en X



syms alfa

alfa= pi/2

rotx=[1 0 0 0;...
   0 cos(alfa) -sin(alfa) 0;...
   0 sin(alfa) cos(alfa) 0;...
   0 0 0 1]

%%

p=[0 3 0 1]'

pp = rotx*p



%% las dos rtaciones juntas son:

p=[3 0 0 1]'
PP=rotx*rotz*p

%% debemos tener en cuenta que la multiplicaci�n de matrices no es conmutativa y el concepto tampoco

Rott=rotx*rotz

%%

p=[3 0 0 1]'

pp=Rott*p

%%


syms beta

beta= pi/2

roty=[cos(beta) 0 sin(beta)  0;...
   0 1 0 0;...
   -sin(beta) 0 cos(beta) 0;...
   0 0 0 1]


p= roty*[0 0 3 1]'
%%  INVERSA DE UNA MATRIZ ROTACI�N EN EL EJE Z nuevamente **********************************

syms gama

gama= pi/2 % 90 GRADOS

rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1]

%%

p=[3 0 0 1]'

%%
PX=rotz*p

%%

inv(rotz)*[0 3 0 1]' % volvemos al punto inicial con la inversa de rotz

%%

rotz*inv(rotz)  % tendr�a que dar la matriz identidad de 4x4


%%
rotz*inv(rotz)*p  % tendr�a que dar el punto de partida 

%% �o sea que se puede hacer varios movimientos en el espacio ? si  +++++++++++++++++++++++EJERCICIO ***

clear all, close all, clc

% ejercicio
%ROTACI�N EN EL EJE Z

syms gama

gama= pi/2 % 90 GRADOS

rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1];

p=[4 0 0 1]';

P1=rotz*p

%%

%rotaci�n en X

syms alfa

alfa= -pi/2

rotx=[1 0 0 0;...
   0 cos(alfa) -sin(alfa) 0;...
   0 sin(alfa) cos(alfa) 0;...
   0 0 0 1];

P2= rotx*P1

%%

% roraci�n en el eje Y


syms beta

beta= 3*pi/2

roty=[cos(beta) 0 sin(beta)  0;...
   0 1 0 0;...
   -sin(beta) 0 cos(beta) 0;...
   0 0 0 1]

P3= roty*P2


%% ejercicio P=(0,3,0,1) 
% aplicarle las siguientes transformaciones rot ( z, pi)    luego Des(z, +3)   luego rot(y, pi/2) 

clear all, close all,  clc

p=[0 3 0 1]'


%%

%ROTACI�N EN EL EJE Z

syms gama

gama= pi

rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1];

p1=rotz*p


%% MATRIZ DE TRASLACI�N 

syms dx, syms dy, syms dz


dz=3

tras=[1 0 0 0;...
   0 1 0 0;...
   0 0 1 dz;...
   0 0 0 1]


%%

p2= tras*p1

%%  ahora rotamos en el eje y pi/2 positivo

%roraci�n en el eje Y


syms beta

beta= pi/2

roty=[cos(beta) 0 sin(beta)  0;...
   0 1 0 0;...
   -sin(beta) 0 cos(beta) 0;...
   0 0 0 1]

%%
p3= roty*p2



%% representaci�n de un punto en el espacio por dos sistemas de coordenadas distintos ***************

close all; clear all; clc

%ROTACI�N EN EL EJE Z

syms gama

gama= pi % 90 GRADOS

rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1];

% MATRIZ DE TRASLACI�N 

syms dx

trax=[1 0 0 10;...
   0 1 0 0;...
   0 0 1 0;...
   0 0 0 1]

%%  

p=[3 5 4 1]';

p1=trax*rotz*p % sabemos que el producto de matrices no es conmutativo ni el concepto que representa tampoco

%% �a que distancia del origen considerado fijo se encuentra el origen del sistema rotado y trasladado?


p2=[0 0 0 1]'; % claro el origen del sistema rotado y trasladado tambi�n es un punto el (0 0 0 1)
po= trax*rotz*p2

%% problema avion *************************************************************************
close all; clear all; clc


%ROTACI�N EN EL EJE Z

syms gama

gama= -pi/2 % 90 GRADOS

rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1];

%% MATRIZ DE TRASLACI�N 

syms dx

trax=[1 0 0 3000;...
   0 1 0 5000;...
   0 0 1 350;...
   0 0 0 1]

%%  

p=[0 0 0 1]';


%%
p1=(trax*rotz)*p % 

%%
% a donde se encuentra el sistema de tierra considerando el fijo al avi�n y
% el modificado a la tierra

A= inv (trax*rotz)

%%
p3= A*[3000 5000 350 1]'




%% ejemplo 3.4  del libro de Barrientos pagina 71


%rotaci�n en X
close all; clear all; clc
syms alfa

alfa= pi/2 ;

rotx=[1 0 0 0;...
   0 cos(alfa) -sin(alfa) 0;...
   0 sin(alfa) cos(alfa) 0;...
   0 0 0 1]

%%

syms dx

trax=[1 0 0 8;...
   0 1 0 -4;...
   0 0 1 12;...
   0 0 0 1]


%%

r=[-3 4 -11 1]'

P0= trax*rotx*r

%% que pasa ahora si primero hacemos la traslaci�n y luegola rotaci�n
p1=rotx*trax*r

%% ejemplo 3.6 pagina 75 libro de Barrientos 

% primero - 90 grados con respeco a x, traslacion de (5 5 10 1) Y YNA ROT 
 %(z+90) 
%rotaci�n en X
close all; clear all; clc
syms alfa

alfa= -pi/2 ;

rotx=[1 0 0 0;...
   0 cos(alfa) -sin(alfa) 0;...
   0 sin(alfa) cos(alfa) 0;...
   0 0 0 1]

%% AHOARA LA TRASLACI�N DE (5 5 10 1)

syms dx

trax=[1 0 0 5;...
   0 1 0 5;...
   0 0 1 10;...
   0 0 0 1]


%% FINALMENTE LA ROTACION EN Z DE +90 


%ROTACI�N EN EL EJE Z

syms gama

gama= pi/2; % +90 GRADOS

rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1]

%% LA COMPOSICI�N QUEDA 


rotz*trax*rotx


%%
