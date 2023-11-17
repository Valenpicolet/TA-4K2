function q = CInversa(p)

l1=0.7;
l2=0.3;
q = [0, 0];


cosq2=((p(1)^2+p(2)^2-l1^2-l2^2)/(2*l1*l2));


if(cosq2>1);
    cosq2=1;
end

if(cosq2<-1);
    cosq2=-1;
end

senq2(1) = sqrt(1 - cosq2^2);
senq2(2)=-sqrt(1-cosq2^2);% y este con signo negativo de la raiz
fprintf('sinq2: %d  \n', senq2(1));


q2 = atan2(senq2, cosq2);
beta=atan(p(2)/p(1));% calcula auxiliar para lograr q(1)
% Ajuste de beta
if ((p(1)<0 && p(2)>=0) ||(p(1)<0 && p(2)<0))
    beta = beta + pi;
end
if (p(1) > 0 && p(2) < 0)
    beta = beta + 2 * pi;
end
fprintf('beta : %d \n', beta);

alfa= atan2((l2*senq2(2)),(l1+l2*cosq2)); % aparecen dos valores de alfa debido a que el senq2 tiene dos valores el positivo y el negativo
fprintf('alfa: %d  \n', alfa);

q1=beta-alfa; % igualmente para q1, toma beta que es uno solo pero le resta los dos alfas de la l�nea anterior

% se corrige el desfase para los cuadrantes II y III
if ((p(1)<0 && p(2)>0) ||(p(1)<0 && p(2)<0))
    q1 = q1 + pi;
end

q2 = rad2deg(q2(2));
q1 = rad2deg(q1);

q = [q1, q2]

