clear
clc

fc=200;
Fs=1000;
FC=250;
N=1001;
f2=500;
f1=0;
m1=1e-6

wn=[2 * fc / Fs, 2* FC/Fs];
b=fir1(N-1,wn, 'bandpass', hanning(N));
t=fir1(N-1, wn, 'bandpass', hamming(N));
k=fir1(N-1, wn, 'bandpass', kaiser(N,10));

f=[f1:(f2-f1)/1023:f2];
H1=freqz(b,1,f,Fs);
H2=freqz(t,1,f,Fs);
H3=freqz(k,1,f,Fs);

n=[1:N];
subplot 411;stem(n,b);grid;xlabel('n');title('h(n)');

subplot 412; semilogy(f,abs(H1));grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(Hanning)')
subplot 413;semilogy(f,abs(H2));grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(Hamming)')
subplot 414;semilogy(f,abs(H3));grid
axis([f1 f2 m1 1.1]); xlabel('f[Hz]'); title('Mag(Kaiser)')