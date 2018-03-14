clear
clc
%Mi rut es 18502323-0%
A=1;
B=8;
C=5;
D=0;
E=2;
F=3;
G=2;
H=3;
t=0:0.3:30; v=exp(-((B+A)/(2*C*(D+E)))*t).*sin(t);
subplot 121; plot(t,v); title('PLOT');
xlabel('Tiempo[seg]');ylabel('Volts'); grid;
subplot 122; stem(t,v); title('STEM');
xlabel('Tiempo[seg]'); ylabel('Volts'); grid;                                                                                                           