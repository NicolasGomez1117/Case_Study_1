close all
clear
load('COVIDbyCounty.mat')
%Training Data Group
trainingGroup = CNTY_COVID(:,1:80);

%Testing Data Group
testingGroup = CNTY_COVID(:,81:130);

%%% DIVISION 1 %%%

%d1 = CNTY_COVID(divisionLabels == 1,:);
%popD1 = CNTY_CENSUS{1,6};
%sizeD1 = size(d1);
sizeCNTY_COVID = size(CNTY_COVID);
diffCNTY_COVID= zeros(sizeCNTY_COVID(1,1)-1,sizeCNTY_COVID(1,2)-1);

for i = 1:sizeCNTY_COVID(1,1)
    for j = 1:sizeCNTY_COVID(1,2)-1
        diffCNTY_COVID(i, j) = CNTY_COVID(i,j+1) - CNTY_COVID(i,j);
    end

end

sizeDiffCNTY_COVID = size(diffCNTY_COVID);
SdiffCNTY_COVID = zeros(sizeCNTY_COVID(1,1)-1,sizeCNTY_COVID(1,2)-1);

for i = 1:sizeDiffCNTY_COVID(1,1)
    for j = 1:sizeDiffCNTY_COVID(1,2)-2
        SdiffCNTY_COVID(i, j) = diffCNTY_COVID(i,j+1) - diffCNTY_COVID(i,j);
    end

end


D1 = CNTY_COVID(CNTY_CENSUS.DIVISION == 1,:);
D2 = 10 + CNTY_COVID(CNTY_CENSUS.DIVISION == 2,:);
D3 = 100+  CNTY_COVID(CNTY_CENSUS.DIVISION == 3,:);
D4 = 1000+ CNTY_COVID(CNTY_CENSUS.DIVISION == 4,:);
D5 = 10000+ CNTY_COVID(CNTY_CENSUS.DIVISION == 5,:);
D6 = 100000+ CNTY_COVID(CNTY_CENSUS.DIVISION == 6,:);
D7 = 1000000+ CNTY_COVID(CNTY_CENSUS.DIVISION == 7,:);
D8 = 10000000+ CNTY_COVID(CNTY_CENSUS.DIVISION == 8,:);
D9 = 100000000+ CNTY_COVID(CNTY_CENSUS.DIVISION == 9,:);


divisions = [D1;D2;D3;D4;D5;D6;D7;D8;D9];
kRegion = cat(2, divisions);

%{
for i = 1:sizeD1(1,1)-1
    for j = 1:sizeD1(1,2)-1
        differenceD1(i, j, d) = d1(i+1,j+1) - d1(i,j);
        differenceD1(i, j, 2) = d1(i+1,j+1) - d1(i,j);
    end

end
%}

%%%

k = 9;
[idx, C, ~, D] = kmeans(kRegion,k, 'replicates', 1000);


%{
figure
silhouette(SdiffCNTY_COVID, idx)

figure
silhouette(diffCNTY_COVID, idx)

figure
silhouette(CNTY_COVID, idx)
%}

