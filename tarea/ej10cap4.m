clearall
clc

%Ejemplos 4,5,6,7,9,10,11y12 del capitulo 4
%Ejemplos 1,2,3,4 y 7 del capitulo 5

n = -1 : 3; x = 1 : 5;
w = 0 : (pi/200) : pi;
X = dtft(x, n, w);
subplot 331; plot(w/pi, abs(X)); grid
xlabel('w / Pi [rad/m]'); title('Magnitud')
subplot 332; plot(w/pi, unwrap(angle(X))/pi); grid
xlabel('w / Pi [rad/m]'); title('Angulo / Pi [rad]')