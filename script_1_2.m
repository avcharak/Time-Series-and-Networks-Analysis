%Script 1.2
%Example 2  
 
Fs=input('sampling frequency_');  
f1=input('frequency_1_');  
f2=input('frequency_2_'); 
f3=input('frequency_3_'); 
Amp=input('Amplitude_');
 
Ts=1/Fs;        %sampling period
dt=0:Ts:1-Ts;   %signal duration
 
y1=Amp*sin(2*pi*f1*dt);
y2=Amp*sin(2*pi*f2*dt);
y3=Amp*sin(2*pi*f3*dt);
y4=0.3*(y1+y2+y3);
 
subplot(4,1,1);
plot(dt,y1,'r.-','MarkerSize',10);
title(sprintf('Simulated data with (%d) frequency ',f1),'FontSize',18) 
ylabel('y(t)')
xlabel('(t) Time')
subplot(4,1,2);
plot(dt,y2,'b.-','MarkerSize',10);
title(sprintf('Simulated data with (%d) frequency ',f2),'FontSize',18) 
ylabel('y(t)')
xlabel('(t) Time')
subplot(4,1,3);
plot(dt,y3,'k.-','MarkerSize',10);
title(sprintf('Simulated data with (%d) frequency ',f3),'FontSize',18) 
ylabel('y(t)')
xlabel('(t) Time')
subplot(4,1,4);
plot(dt,y4,'.-','MarkerSize',10);
title('Simulated data with combined frequencies','FontSize',18) 
ylabel('y(t)')
xlabel('(t) Time')


