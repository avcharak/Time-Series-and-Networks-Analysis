%Script 1.21
% Detrend data with applying moving average (1) TSTN
 
TStrend = input('Give the time series with trend_:');
ma_mean = input('Give the moving mean k_:');
m = movmean(TStrend,ma_mean);
TSdetrend = TStrend - m;
figure
plot(TStrend,'.-')
hold on
plot(m,'-r')
plot(TSdetrend,'.-')
xlabel('Time (t)'); 
ylabel('y(t)');
legend('Time series with trend',sprintf('Moving Average Mean(%d) degree',ma_mean),'Detrended','Location','Best')
title(sprintf('Detrended time series by Moving Average(%d) mean',ma_mean))
 

