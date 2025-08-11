
%Script 1.15
%Generate time series with noise and trend
 
N=input('Give the time series length_:');300
f=input('Give the frequency_:');  10,10,0.2
Amp=input('Give the Amplitude_:');
t=0:1:N;
y=Amp*sin(2*pi*f*t/500);
 
noise=input('Give the noise level_:'); 
ynoise=AddNoise(y',noise);  % add noise 
 
t=1:N+1;
Ynoise_trend=(ynoise' + t/10)';  
plot(Ynoise_trend,'b.-','MarkerSize',10);   
ylim([-Amp-5 4*Amp])
xlim([0 N+1])
xlabel('Time (t)'); 
ylabel('y(t)');
legend('Time series with noise and trend','Location','Best')

