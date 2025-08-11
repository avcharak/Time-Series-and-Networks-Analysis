% Script 1.8
% Generate time series with Gaussian distribution 

N=input('Give the time series length_:');
 
TS=randn(N,1);
plot(TS,'.-')
title('Time series with Gaussian distribution N(0,1)','FontSize',14) 
xlabel('Time (t)'); 
ylabel('y(t)');
