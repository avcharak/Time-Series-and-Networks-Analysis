% Script 1.22
% Detrend data with applying moving average model TSTN
 
TStrend = input('Give the time series with trend_:');
ma_degree = input('Give the moving average degree_:');
m = ones(1,ma_degree)/ma_degree;
mafit = filtfilt(m,1,TStrend);
figure
plot(TStrend,'.-')
hold on
plot(mafit,'-r')
xlabel('Time (t)'); 
ylabel('y(t)');
TSdetrend = TStrend - mafit;
hold on
plot(TSdetrend,'.-')
xlabel('Time (t)'); 
ylabel('y(t)');
legend('Time series with trend',sprintf('Moving Average(%d) degree',ma_degree),'Detrended','Location','Best')
title(sprintf('Detrended time series by Moving Average Model(%d) degree',ma_degree))

