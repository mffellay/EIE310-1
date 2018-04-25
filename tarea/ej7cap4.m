clearall
clc

%Ejemplos 4,5,6,7,9,10,11y12 del capitulo 4
%Ejemplos 1,2,3,4 y 7 del capitulo 5

w=[-5:0.01:5]*pi;
X=exp(j*w) ./ (exp(j*w) - 0.5);
plot(w/pi, abs(X)); grid
xlabel('w / Pi [rad/m]');
title('Magnitud de X(w)');