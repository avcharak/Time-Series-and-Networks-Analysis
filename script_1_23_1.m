
%%Script 1.23.1
% Add non linear trend to time series  r

TS = input('Give the time series_:');
length = input('Give the time series lenght_:'); 
t=1:length;
nonlinear_trend = (0.01 * t.^2 - 0.5 * t + 2)';
TStrendnon=[TS + nonlinear_trend];  
figure 
plot(t,TS,t,TStrendnon)
legend('Initial Data','Data with nonlinear Trend')
xlabel('Time (t)'); 
ylabel('y(t)');


