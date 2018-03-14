clear
clc
A=1;
B=8;
C=5;
D=0;
E=2;
F=3;
G=2;
H=3;
I=0;
%respuesta escalon filtro IIR
%y(n)=0.1 x(n) + 0.9 y(n-1)
vi= (H*A); %voltaje de entrada
a= (D+E)/10; %constante del filtro
dt= 10e-3; % 1/100 Hz = 10mseg
t(1)= 0; %indice 1=>t=0
vf(1)= 0;%indice 1=>t=0
for i = 2 : 41;
    t(i)= (i-1)*dt;
    vf(i)=(1-a)* vi + a * vf(i-1);
end
close; stem(t,vf); %grafico
xlabel('seg'); grid