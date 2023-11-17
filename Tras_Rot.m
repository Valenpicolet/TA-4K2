%% MATRIZ DE TRASLACIÓN 

syms dx

close all; clear all; clc

syms dx dy dz real 
tras=[1 0 0 dx;...
   0 1 0 0;...
   0 0 1 0;...
   0 0 0 1]

%%  le damos a dx = 3 

dx =3

eval (tras)

%% si ahora definimos Tras1

tras1=[1 0 0 -4;...
   0 1 0 0;...
   0 0 1 0;...
   0 0 0 1]

%%
p=[3 3 3 1]'

p1= tras1*p

%% matrices de rotación

close all; clear all; clc

%ROTACIÓN EN EL EJE Z

syms gama
rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1]
%%
gama= pi/2 % 90 GRADOS

rotzz =eval (rotz)
%%
p=[3 0 0 1]'


pp = rotzz*p

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


%% roración en el eje Y


close all; clear all; clc

syms beta

%beta= pi/2

roty=[cos(beta) 0 sin(beta)  0;...
   0 1 0 0;...
   -sin(beta) 0 cos(beta) 0;...
   0 0 0 1]

%%

p=[3 0 0 1]'

pp = roty*p



%% rotación en X

close all; clear all; clc

syms alfa

alfa= pi

rotx=[1 0 0 0;...
   0 cos(alfa) -sin(alfa) 0;...
   0 sin(alfa) cos(alfa) 0;...
   0 0 0 1]

%%

p=[-1 3 3 1]'

pp = rotx*p



%% EJERCITACIÓN 
syms gama

gama= pi/2

rotz=[cos(gama) -sin(gama) 0 0;...
   sin(gama)  cos(gama)  0 0;...
   0 0 1 0;...
   0 0 0 1]



%%

syms dx

dx=3

trax=[0 0 0 dx;...
   0 0 0 0;...
   0 0 0 0;...
   0 0 0 1]

rotz*trax


p=[0 0 1 1]'


rotz*trax*p
%% Clase 7 

%ROTACIÓN EN EL EJE Z

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

%rotación en X



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

%%

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
%%

%ROTACIÓN EN EL EJE Z nuevamente **************************

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

rotz*inv(rotz)  % tendría que dar la matriz identidad de 4x4


