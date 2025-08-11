% Script 1.10 
% Histogram 

TS=input('Give the time series_:');
histfit(TS',25,'normal')
title('Gaussian distribution N(0,1)','FontSize',14) 
legend('Data distribution','Normal distribution')
xlabel('y(t)'); 
ylabel('Frequency');

