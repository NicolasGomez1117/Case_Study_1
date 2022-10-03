close all
clear
load('COVIDbyCounty.mat')

smoothData = movmean(CNTY_COVID, 20);
%Division 1:
figure();
plot(dates, smoothData(divisionLabels == 1,:));
title('Division 1');
ylabel('Cases');
xlabel('Week Number');

%Division 2:
figure();
plot(dates, smoothData(divisionLabels == 2,:));
title('Division 2');
ylabel('Cases');
xlabel('Week Number');
%Division 3:
figure();
plot(dates, smoothData(divisionLabels == 3,:));
title('Division 3');
ylabel('Cases');
xlabel('Week Number');
%Division 4:
figure();
plot(dates, smoothData(divisionLabels == 4 ,:));
title('Division 4');
ylabel('Cases');
xlabel('Week Number');
%Division 5:
figure();
plot(dates, smoothData(divisionLabels == 5,:));
title('Division 5');
ylabel('Cases');
xlabel('Week Number');
%Division 6:
figure();
plot(dates, smoothData(divisionLabels == 6,:));
title('Division 6');
ylabel('Cases');
xlabel('Week Number');
%Division 7:
figure();
plot(dates, smoothData(divisionLabels == 7,:));
title('Division 7');
ylabel('Cases');
xlabel('Week Number');
%Division 8:
figure();
plot(dates, smoothData(divisionLabels == 8,:));
title('Division 8');
ylabel('Cases');
xlabel('Week Number');
%Division 9:
figure();
plot(dates, smoothData(divisionLabels == 9,:));
title('Division 9');
ylabel('Cases');
xlabel('Week Number');

