clear all;
clc;
%mi rut es 18.502.323-0
a=1;b=8;c=5;d=0;e=2;f=3;g=2;h=3;i=0;
B=((a+b)*c);
r=((30+e)*h)/((b+c+e)*10);
R=((i+e)*(a+c)/(b+c+e+g+h));
%funcion exponencial decreciente
n=0:1:10;x=B*r.^n;
subplot 331; stem(n,x);
xlabel('n');title('S. Exponencial Decreciente');grid
m=0:1:10;y=B*(R+1).^m;
%funcion exponencial creciente
subplot 332;stem(m,y);
xlabel('m');title('S. Exponencial Creciente')
%funcion exponencial compleja
w=[-20:1:20];q=-((b+c+1)/60)+(((a*h*d)+1)/60)*j;z=exp(q*w);
subplot 333; stem(w, real(z)); title('parte real'); xlabel('w')
subplot 334; stem(w, imag(z)); title('part imag'); xlabel('w')
subplot 335; stem(w, abs(z)); title('magnitud');xlabel('w')
subplot 336; stem(w,(180/pi)*angle(z)); title('fase [*]'); xlabel('w')
%funcion sinusoidales
j=[0:1:30];
u=3*cos(2*pi*((2+d+f)/90)*j+pi/3);
subplot 337;stem(j,u);
xlabel('j');title('S. sinusoidal');grid
%funcion impulso
o=[-b:b];
p=[(o-a)==0];
subplot 338;stem(o,p);title('S. Impulso');xlabel('o');grid
%funcion escalon
k=[-f:f];
K=[(k-a)>=0];
subplot 339; stem(k,K);title('S. Escalon');xlabel('k');grid