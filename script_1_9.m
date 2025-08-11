%Script 1.9
%Descriptive statistics 
 
TS=input('Give the time series_:');
 
Descriptive_results=[mean(TS)' std(TS)' var(TS)' median(TS)' max(TS)' min(TS)']
plot(TS,'b.-','MarkerSize',10)
xlabel('Time (t)'); 
ylabel('y(t)');
