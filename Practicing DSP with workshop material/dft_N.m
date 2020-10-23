%Program to fing N point DFT of a signal
%Let x(n)=[1 3 4 5 2] later try for x(n)=sin(2*pi*n/N1) where N1 is period
% xn=input('Enter the sequence');
%for x(n) =x(n)=sin(2*pi*n/N) -->comment above statement and uncomment following three statements
N1=10;
n=0:N1-1;
xn=sin(2*pi*n/N1)
N=input('Enter the length of the DFT ')
Xk=[];
for k=0:N-1
 X=0;
 for n=0:length(xn)-1
 X=X+xn(n+1)*exp(-i*2*pi*k*n/N);
 end
 Xk(k+1)=X;
end
disp(Xk)
%To plot mag. and phase of DFT
k=0:N-1;
n=0:length(xn)-1;
subplot(311);stem(n,xn,'r');
title('Original signal')
subplot(312);stem(k,abs(Xk),'g');
title('Magnitude plot');
subplot(313);stem(k,angle(Xk),'b');
title('Phase plot')
%Verify using built in command fft(x,N);
Xkc=fft(xn,N);
d=Xk-Xkc;
figure
subplot(211);stem(k,abs(Xk),'r','filled');title('Without using built in command');
subplot(212);stem(k,abs(Xkc),'g');title('Using built in command'); 