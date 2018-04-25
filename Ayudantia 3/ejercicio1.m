[x,n]= impulso(0,-15,+15);
w=[0:pi/200:pi];
[X]=dtft(x,n,w);
subplot 221;plot(w/pi,abs(X));
xlabel('w/Pi [rad/m]');
title('DTFT Impulso'); grid
