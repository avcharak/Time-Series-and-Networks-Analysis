% script 1.27
% Detrend data with fit model (DJI_index)
 
TStrend = input('Give the time series_:');       
length = input('Give the time series lenght_:'); 
Degreefit=input('Give the degree polynomial_:'); 
t=(1:length)';
p=polyfit(t,TStrend,Degreefit);     
f=polyval(p,t);
plot(t,TStrend,t,f,':k')
hold on
TSdetrend=TStrend-f;        % y1detrend time series name
plot(TSdetrend);
legend('Data with Trend',sprintf('(%d) Degree model',Degreefit),'Detrended data')
xlabel('Time (t)'); 
ylabel('y(t)');

