function [Hactivity,Hmobility,Hcomplexity] = HjorthParameters_book(TS)
% [Hmobility,Hcomplexity] = HjorthParameters(TS)
% computes the Hjorth parameters mobility and complexity.
% INPUTS:
% - TS          : The time series
% OUTPUTS
% - Hactivity,Hmobility,Hcomplexity
%========================================================================
 
dTS = diff(TS);
ddTS = diff(dTS);
m0 = var(TS);
m1 = var(dTS);
m2 = var(ddTS);
 
Hactivity = m0
Hmobility = sqrt(m1/m0)
Hcomplexity=sqrt((m2/m1)/(m1/m0))

