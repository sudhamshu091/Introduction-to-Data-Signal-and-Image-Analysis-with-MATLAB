% To Generate a CT unit ramp signal
rt=2*t;
plot (t,rt,'b');
% To Generate a CT exponential signal
a=input('Enter the value of a ');
xt=exp(a*t);
plot(t,xt,'c','LineWidth',3);
% To Generate a CT Sinusoidal signal signal
f=input('Enter the frequency of the signal ');
Sxt=a*sin(2*pi*f*t);
plot(t,Sxt,'r');
% To Generate a CT damped Sinusoidal signal signal
dSxt=xt.*sin(2*pi*f*t);
plot(t,dSxt,'r');
hold off;
