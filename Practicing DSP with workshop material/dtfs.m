%To find FS of a signal
N=10;
n=0:19
% xt=sin(2*pi*n/N);
N1=5;
xt=sin(2*pi*n/N)+sin(2*pi*n/N1);;
for k=0:19
 Xk=0;
 for j=0:19
 Xk=Xk+xt(j+1)*exp(-i*2*pi*j*k/N);
 end
 X(k+1)=Xk/10
end
subplot(211);stem(n,xt);
subplot(212);stem(n,abs(X));