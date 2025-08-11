function HIST=histogram_avra(data)

    close all
    m=length(data);
    mu=mean(data);
    sigma=std(data);
    Bins=20;
   [freq,x_axis]=hist(data,Bins); 
   pdf=freq./m;
   figure('position',[0 0 800 600]);
   title('Histogram')
   xlabel('Values');
   ylabel('Number of Observations');
   hold on 
   Y=normpdf(x_axis,mu,sigma);
   bar(x_axis,pdf,'FaceColor','blue','BarWidth',1);
   hold on
   plot(x_axis,Y./sum(Y),'Color','red','LineWidth',2);   
hold on
   
   if nargin>=2
       m_conf=length(percentiles);
       quant=quantile(data,percentiles);
       X_axis=get(gca,'XTick');
       set(gca,'XTick',unique([min(X_axis) mu quant max(X_axis)]));
       for i=1:m_conf
           plot(quant(i),0,'sm','LineWidth',2);
           hold on          
       end
       legend({'value','Normal Dist.','Mean','Quantile'},'Location','NorthWest','FontSize',14,'FontWeight','Bold');
   else
       quant='';
       legend({'value','Normal Dist.','Mean'},'Location','NorthWest','FontSize',14,'FontWeight','Bold');
   end

