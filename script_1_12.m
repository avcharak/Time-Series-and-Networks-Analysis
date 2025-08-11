% Script 1.12
% Generates gamma random numbers

r2=gamrnd(3,0.1,1,1000);
 
plot(r2,'.-')
xlabel('Time (t)'); 
ylabel('y(t)');
legend('Simulated time series','Location','Best')

