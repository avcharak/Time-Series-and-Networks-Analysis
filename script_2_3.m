%Script 2.3
 
% equation  y(t) = sin(2*pi*f*t)

f=4;     % frequency 
Ts=0.01; % sampling rate fs=1/Ts (100/sec)
t=0: Ts: 1;
x=sin(2*pi*f*t);

plot(t,x, 'o-');

title('Initial Time series','FontSize',20)  
ylabel('y(t)')
xlabel('(t) Time')

