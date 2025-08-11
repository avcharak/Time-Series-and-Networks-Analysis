% Script 1.14
% Histogram of time series with negative skewness
 
TS=input('Give the time series_:'); % i.e r3
Skewness = input('Give the skewness_:'); % i.e -1.027 skewness of r3 
h = histfit(TS',25,'weibull');set(h(1),'facecolor','b'); set(h(2),'color','r')
ylabel('Frequency');
leg1=legend(sprintf('Time series Skewness(%d)',Skewness),'Weibull distribution','Location','Best')
hold on
h1=histfit(TS',25,'normal');set(h1(1),'facecolor','b'); set(h1(2),'color','g')

