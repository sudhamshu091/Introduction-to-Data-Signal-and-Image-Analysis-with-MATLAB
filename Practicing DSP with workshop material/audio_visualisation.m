%Program to see 
clc
close all;
clear all;
f=0.8;
n=6
a=fir1(n,f,'high')
b=fir1(n,f,'low')
[y,fs]=audioread('file_example_WAV_1MG.wav')
sound (y,fs);%plays the audio file
o=filter(a,1,y);
p=filter(b,1,o);
%Filter Visualization Tool-> use help fvtool to know more
fvtool(a);%displays HPF response
fvtool(b);%displays LPF response
subplot(3,1,1);
plot(y);%displays sound signal
subplot(3,1,2);
plot(o);%displays sound signal when passed through HPF 
subplot(3,1,3);
plot(p);%displays sound signal when passed through LPF
