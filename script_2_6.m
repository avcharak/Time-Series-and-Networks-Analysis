%
%Script 2.6
%Generate periodic time series 
 
N=input('Give the time series length_:');
f=input('Give the frequency_:');  
Amp=input('Give the Amplitude_:'); 100,3,10
t=0:1:N;
yy=Amp*sin(2*pi*f*t/100);
plot(yy,'b.-','MarkerSize',10);   %plot function
ylim([-Amp-5 Amp+5])
xlim([0 N])
xlabel('Time (t)'); 
ylabel('y(t)');
legend('Periodic component ','Location','Best')

