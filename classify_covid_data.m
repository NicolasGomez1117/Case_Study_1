%close all
%clear
load('COVIDbyCounty.mat')
%load('cluster_covid_data.mat')

[iSorted,iIndex] = sortrows(idx,'ascend');