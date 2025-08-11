%Script 1.13
%Histogram of time series with positive skewness
TS=input('Give the time series_:'); % i.e r2
Skewness = input('Give the skewness_:'); % i.e 1.24 skewness of r2
histfit(TS',25,'gamma')
xlabel('y(t)');
ylabel('Frequency');
legend(sprintf('Skewness(%d)',Skewness),'Location','Best')