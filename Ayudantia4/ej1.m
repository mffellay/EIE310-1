clear
clc
% Lee h(n)
load h.txt
% Grafica h(n)
subplot 211;
plot(h, '.'); grid
xlabel('n');
title('h(n)');
% Calcula Mag[H(f)]
f = 0 : 100 : 200000;
M = abs(freqz(h,1,f,102000));
% Grafica Mag[H(f)]
subplot 212;
semilogy(f/500, M); grid;
axis([0 230 0.000001 10]);
xlabel('f[kHz]');
title('Mag[H(f)]');