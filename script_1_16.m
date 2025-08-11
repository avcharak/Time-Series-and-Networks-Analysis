
%Script 1.16
%Generate periodic time series 
 
N=input('Give the time series length_:');
f=input('Give the frequency_:');  
Amp=input('Give the Amplitude_:');
t=0:1:N;
y=Amp*sin(2*pi*f*t/500);
plot(y,'b.-','MarkerSize',10);   %plot function
ylim([-Amp-5 Amp+5])
xlim([0 N])
xlabel('Time (t)'); 
ylabel('y(t)');
legend('Periodic component ','Location','Best')
