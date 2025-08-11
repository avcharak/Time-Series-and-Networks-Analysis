
% script 2.7
data=input('Time series name_'); 
tmax=input('Time Lag_'); 
figure
subplot(2,1,1);
plot(data,'b.-','MarkerSize',6);
axis([0 100 -10 10])
title('Time series','FontSize',10) 
ylabel('y(t)')
xlabel('(t) Time')
subplot(2,1,2);
[mutM] = mutualinformation_b(data, tmax)

