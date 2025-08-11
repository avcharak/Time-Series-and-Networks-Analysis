%%Script 1.23
% Detrend data with applying first difference TSTN
 
TStrend = input('Give the time series with trend_:'); 
length = input('Give the time series length_:');
t=1:length;
Diff_detreded=diff(TStrend)   % Diff_y1 the time series without trend
plot(t,TStrend,'.-');
hold on 
plot(Diff_detreded,'.-');
legend('Data with trend','Detrended time series')
xlabel('Time (t)'); 
ylabel('y(t)');
title('Detrended time series by First Difference','FontSize',14) 
