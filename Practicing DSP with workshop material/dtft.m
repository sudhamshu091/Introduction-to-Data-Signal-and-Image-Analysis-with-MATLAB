%Let x(n) be a DTNP signal x(n)=a^n
%Later try with unit step signal
N=input('length of x(n) ');
n=0:N-1;
xn=2.^n;
% xn=ones(1,N);% For step signal
m=1;
DTFTxn=[];
for w=-4*pi:.2:4*pi
 xw=0;
 for n1=0:N-1
 xw=xw+xn(n1+1)*exp(-i*w*n1);
 end
 DTFTxn(m)=xw;
 m=m+1;
end
%To plot DTFT
w=-4*pi:0.2:4*pi
subplot(211);stem(xn);title('DT Signal')
subplot(212);plot(w/pi,abs(DTFTxn));
xlabel('frequency in \pi radians');
title('DTFT of DT signal and its nature is Continuous in Freq. and Periodic')