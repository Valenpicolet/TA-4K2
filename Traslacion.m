%% si ahora definimos Tras1

tras1=[1 0 0 -4;...
   0 1 0 0;...
   0 0 1 0;...
   0 0 0 1]

%%
p=[3 3 3 1]'

p1= tras1 * p
resultado = rotSegunEje(90,'x')
r = resultado * p1

p2 = [4 8 12 1]';
resultado2 = rotSegunEje(-90,'z')
r2 = resultado2 * p2
r2'



