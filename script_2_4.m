%
%Script 2.4
 
% equation  y(t) = sin(2*pi*f*t)
f=4;
Fs=input('sampling frequency_');  
Ts=1/Fs;
t=0:Ts:1;
[x1]=(sin(2*pi*f*t))';
plot(t,x1, 'o-');
title(sprintf('Time series with (%d) sampling rate Fs ',Fs),'FontSize',14) 

