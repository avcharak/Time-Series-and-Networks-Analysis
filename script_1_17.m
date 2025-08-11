
%Script 1.17
%Generate time series with noise and trend
 
N=input('Give the time series length_:');
t=0:1:N;
A=sqrt(t)/3;
y=A.*A.*A.*sin(2*pi*t/50);
 
noise=input('Give the noise level_:');
ynoise=AddNoise(y',noise);
 
t=1:N+1;
Ynoise_trend=(ynoise' + 2*t)';  % TStrend the new name of time series
plot(Ynoise_trend,'b.-','MarkerSize',10);   %plot function
xlim([0 N+1])
xlabel('Time (t)'); 
ylabel('y(t)');
legend('Time series with noise and trend','Location','Best')

