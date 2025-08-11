%Script 1.19
% Test for trend using the mean value 
 
TS=input('Give the time series_:');  %Ynoise_trend
Size_segment=input('Give the time series (segment) length_:');  %50
Overlap=input('Give the overlap of segments_');  %0
 
[TS_segments,index,reject] =slideWindow(TS, Size_segment, Overlap);
TS_segments(TS_segments==0)=NaN;
columnMeans = mean(TS_segments,'omitnan');
plot(columnMeans,'o')
xlabel('Points'); 
ylabel('mean');
