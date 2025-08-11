%% Script 1.20
% Detrend data with fit model
 
TStrend = input('Give the time series_:');  
length = input('Give the time series lenght_:'); 
Degreefit=input('Give the degree polynomial_:'); 
t=(1:length)';
p=polyfit(t,TStrend,Degreefit);     
f=polyval(p,t);
plot(t,TStrend,'b.-',t,f,':k')
hold on
TSdetrend=TStrend-f;        
plot(TSdetrend,'r.-');
axis([0 length -20 40])
legend('Initial Data','Model Trend (fit)','Detrended data')
xlabel('Time (t)'); 
ylabel('y(t)');

