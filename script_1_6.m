%Script 1.6
%Example 6 
 
figure
subplot(2,1,1);
plot(Nasdaq,'r.-','MarkerSize',10);
xlim([0 252])
title('Financial data Nasdaq index','FontSize',18) 
ylabel('Index ')
xlabel('(t) Time')
subplot(2,1,2);
plot(gold,'b.-','MarkerSize',10);
xlim([0 252])
title('Financial data Gold price','FontSize',18) 
ylabel('y(t)')
xlabel('(t) Time')

