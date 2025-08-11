% script 1.28
% Detrend data with applying moving average (DJI_index)
 
TStrend = input('Give the time series with trend_:');
ma_degree = input('Give the moving average degree_:');
m = ones(1,ma_degree)/ma_degree;
mafit = filtfilt(m,1,TStrend);
 
figure
plot(TStrend,'-')
hold on
plot(mafit(1:100),'.-r')
xlabel('Time (t)'); 
ylabel('y(t)');
legend('Time series with trend',sprintf('Moving Average(%d) degree',ma_degree),'Location','Best')
 
TSdetrend = TStrend - mafit;
figure(3)
clf
plot(TSdetrend,'.-')
xlabel('Time (t)'); 
ylabel('y(t)');
title(sprintf('Detrended time series by Moving Average(%d) degree',ma_degree))

