%Script 1.1
%Example 1  
 
Fs=input('Give the sampling period_:');  %sampling period (samples per second)
f1=input('Give the frequency_:');  
Amp=input('Give the Amplitude_:');
 
Ts=1/Fs;        % seconds per sample 
dt=0:Ts:1-Ts;   %signal duration
 
[y1]=(Amp*sin(2*pi*f1*dt))'; % sin function
 
plot(dt,y1,'b.-');   %plot function
ylim([-Amp-5 Amp+5])
ax=gca;            %grid parameter
ax.YGrid= 'on';    % y grid on
 
title('Simulated data','FontSize',20)  
ylabel('y(t)')
xlabel('(t) Time')

