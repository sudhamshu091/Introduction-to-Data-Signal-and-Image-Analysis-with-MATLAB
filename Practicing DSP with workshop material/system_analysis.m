%Program to analyse a system defined by nth order difference equation
%i.e. to find impulse response, response of system for step,sine, any input
%let us take a 2nd order difference equation
%y(n)-4y(n-1)+4y(n-2)=x(n) -->here a0=1,a1=-4,a2=4,b0=1
%Try here a0=1,a1=2,a2=2,b0=1
%1.To find impulse response of the system
b=1;
% a=[1 -4 4];
a=[1 1];%y(n)-y(n-1)=x(n) i.e.h(n)=iZT[1/(1+Z^-1)] i.e.h(n)=(-1)^n*u(n)
%Try impz(b,a)
%Try impz(b,a,5)
[h n]=impz(b,a);%computes h(n)
subplot(311);stem(h);title('impulse response')
%To find response of a system for given input
%Let us find response of above system for step input
x=ones(1,length(h));%Define a step signal of lentgth equal to length of h(n) or any length
y=filter(b,a,x);
subplot(312);stem(x);title('Step input');
subplot(313);stem(y);title('Step response');
figure%Create new figure window
%To find response of system for sine wave
xsin=2*sin(2*pi*n/10);%Create sine wave input
ysin=filter(b,a,xsin);
subplot(211);stem(xsin);title('Sine input');
subplot(212);stem(ysin);title('Sine response');
figure%Create new figure window
%To find response of system for other input
xin=2*n;%Create any input signal
yin=filter(b,a,xin);
subplot(211);stem(xin);title('Input');
subplot(212);stem(yin);title('S/m Response');