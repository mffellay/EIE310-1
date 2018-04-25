w=0:(pi/200):pi;
X = exp(j*w) ./ (exp(j*w) - 0.4);
subplot 211; plot(w/pi, abs(X)); grid
xlabel('w / Pi [rad/m]'); title('Magnitud')
subplot 212; plot(w/pi, unwrap(angle(X))/pi); grid
xlabel('w / Pi [rad/m]'); title('Angulo / Pi [rad]')