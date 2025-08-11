
%Script 2.1
 
data=input('Time series name_'); %r
lag_t=input('Time Lag_'); 
figure
subplot(2,1,1);
plot(data,'b.-','MarkerSize',6);
title('Time series','FontSize',18) 
ylabel('y(t)')
xlabel('(t) Time')
subplot(2,1,2);
[acf,lags,bounds]=autocorr(data,lag_t);
autocorr(data,lag_t);
title('Sample Autocorrelation Function','FontSize',16) 
legend('acf','upper bound','down bound')
ylabel('Sample autocorrelation')
xlabel('Lag')

