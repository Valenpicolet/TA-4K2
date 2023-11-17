% Matriz de Denavit-Hartenberg
clc; clear all;


function DH = DenavitHartenberg(q, d, a, alfa)
   q = input("Ingrese q: ");
   d = input("Ingrese d: ");
   a = input("Ingrese a: ");
   alfa = input("Ingrese alfa: ");

   matrizA = [cos(q)  -sin(q)  0  0;
              sin(q)  cos(q)   0  0;
                0       0      1  0;
                0       0      0  1];

   matrizB = [ 1  0  0  0;
               0  1  0  0;
               0  0  1  d;
               0  0  0  1];

  matrizC = [ 1  0  0  alfa;
                0  1  0   0;
                0  0  1   0;
               0  0  0   1];

  matrizE = [ 1      0            0       0;
              0   cos(alfa)  -sin(alfa)   0;
              0   sin(alfa)   cos(alfa)   0;
              0      0            0       1];

  DH = matrizA * matrizB * matrizC * matrizE;
  disp(DH);
endfunction;

DenavitHartenberg();

disp("---------------------------------------------------------")

% con variables simuladas para la matriz de presentación
% alfa:  α    ,  theta:  θ
%syms θi di ai αi
