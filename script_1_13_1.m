% Script 1.13.1
% Generates Weinbull random numbers

r3=wblrnd(3,45,1,1000);
plot(r3,'.-')
xlabel('Time (t)'); 
ylabel('y(t)');
legend('Simulated time series','Location','Best')

