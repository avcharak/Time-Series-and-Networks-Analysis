% script 1.29
% Detrend data with applying first difference 
 
TStrend = input('Give the time series with trend_:'); 
length = input('Give the time series lenght_:');
t=1:length;
Diff_detreded=diff(TStrend);   % Diff_y1 the time series without trend
plot(t,TStrend);
hold on 
plot(Diff_detreded);
legend('Data with trend','Detrended time series')
xlabel('Time (t)'); 
ylabel('y(t)');
