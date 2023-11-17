function [q, Dq, t] = GeneracionDeTrayectorias(qi, qf, wmax, h)

  dof = max(size(qf));
  T = max(abs((qf-qi))/wmax);

  wT=(qf-qi)/T;

  % Generacion de Trayectorias

  t = 0:h:T;
  q = zeros(length(t), dof);
  Dq = zeros(length(t), dof);
  index = 1;

  for i = 1:1:length(t)

      q(index,:)=qi'+wT'*t(i);
      Dq(index,:)=wT;
      index = index + 1;

end

