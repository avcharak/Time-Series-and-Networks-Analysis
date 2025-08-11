%% 
%Script 1.18
%Generate time series 
 
N=input('Give the time series length_:');
t=0:1:N;
A=sqrt(t)/3;
y=A.*A.*A.*sin(2*pi*t/50);
plot(y','b.-','MarkerSize',10);   %plot function
ylim([min(y)-5 max(y)+5])
xlim([0 N+1])
xlabel('Time (t)'); 
ylabel('y(t)');
legend('Time series','Location','Best')

