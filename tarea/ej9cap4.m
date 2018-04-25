clearall
clc

%Ejemplos 4,5,6,7,9,10,11y12 del capitulo 4
%Ejemplos 1,2,3,4 y 7 del capitulo 5

[x, n] = impulso(0, -10, 10);
w = [0 : 0.01 : 1] * pi;
[X] = dtft(x, n, w);
subplot 221; plot(w/pi, abs(X));
xlabel('w / Pi [rad/m]');
title('DTFT de impulso'); grid