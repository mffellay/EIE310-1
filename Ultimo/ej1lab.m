clear
clc

a=[0,05    0,45    0,56   0,44    0,05];
a= a/(sum(a));

b=[3,2    0,25    0,4   0,6    0,25];
b=b/(sum(b));

[H1, w1] =freqz(a,1);

[H2,w2]=freqz(b,1);

n=[0:0.1 : 3.9]*pi; x=square(n);
y1=conv(x,a);
y2=conv(x,b);
subplot 221; stem(x); title('x (entrada)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid
subplot 222; stem(y1); title('y (salida h1)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid


subplot 223; stem(x); title('x (entrada)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid
subplot 224; stem(y2); title('y (salida h2)');
axis([0 45 -1.5 1.5]); xlabel('n'); grid