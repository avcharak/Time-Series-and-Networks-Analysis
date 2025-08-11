%Script 1.11
%Descriptive statistics 2
 
TS=input('Give the time series_:');
 
Descriptive_results=[mean(TS)' std(TS)' var(TS)' skewness(TS)' kurtosis(TS)' median(TS)' max(TS)' min(TS)']
plot(TS,'b.-','MarkerSize',10)
xlabel('Time (t)'); 
ylabel('y(t)');
