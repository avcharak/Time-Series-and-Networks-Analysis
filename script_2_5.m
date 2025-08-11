%
%Script 2.5
 
% equation   %y(t)=5*cos(2*f1*pi*t)+15*cos(2*f2*pi*t)+5*cos(2*f3*pi*t);

Fs=input('sampling frequency_');   %400
f1=input('frequency_1_');   %5
f2=input('frequency_2_');   %10
f3=input('frequency_3_');   %15
Ts=1/Fs;
t=0:Ts:0.4;
x=5*cos(2*f1*pi*t)+15*cos(2*f2*pi*t)+5*cos(2*f3*pi*t);
plot(t, x, 'o-');
title(sprintf('Time series with (%d) sampling rate Fs ',Fs),'FontSize',14) 
ylabel('y(t)')
xlabel('t (time)')

