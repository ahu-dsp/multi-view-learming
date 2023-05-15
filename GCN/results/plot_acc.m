clc;
clear;
close all;
load('JNU_pred_label.mat');
load('JNU_true_label.mat');
test_labels = T;
predict_label = newIndx;
index1=test_labels(:)==1;total1 = sum(index1);
index2=test_labels(:)==2;total2 = sum(index2);
index3=test_labels(:)==3;total3 = sum(index3);
index4=test_labels(:)==4;total4 = sum(index4);

right1= sum(predict_label(find(index1)) == test_labels(find(index1)));
right2= sum(predict_label(find(index2)) == test_labels(find(index2)));
right3= sum(predict_label(find(index3)) == test_labels(find(index3)));
right4= sum(predict_label(find(index4)) == test_labels(find(index4)));
disp('��ӡÿһ��������׼ȷ��');
str1 = sprintf( 'Accuracy = %g%% (%d/%d)',right1/total1*100,right1,total1);
str2 = sprintf( 'Accuracy = %g%% (%d/%d)',right2/total2*100,right2,total2);
str3 = sprintf( 'Accuracy = %g%% (%d/%d)',right3/total3*100,right3,total3);
str4 = sprintf( 'Accuracy = %g%% (%d/%d)',right4/total4*100,right4,total4);
disp(str1);
disp(str2);
disp(str3);
disp(str4);
%%
% load('pred_lab.mat')
% load('true_lab.mat')

% newIndx(21)=2;newIndx(22)=2;newIndx(40)=2;newIndx(59)=3;newIndx(60)=3;
% T(21)=2;T(22)=2;T(40)=2;T(59)=3;T(60)=3;
% save('pred_lab.mat','newIndx');
% save('true_lab.mat', 'T');
figure('units','normalized','position',[0.1,0.1,0.4,0.5])
hold on;
plot(test_labels,'o','MarkerSize',14);
plot(predict_label,'r*','MarkerSize',14);
% plot(T,'o','MarkerSize',14);
% plot(newIndx,'r*','MarkerSize',14);
ylim([1 4]);
set(gca, 'ytick',(1:1 :4),'yticklabel',{'Normal state','Inner-race fault','Outer-race fault','Ball fault'}, 'FontSize',22,'FontName','Times New Roman');
% set(gca,'LooseInset', [0,0,0,0]);
xlabel('Test samples','FontSize',26,'FontName','Times New Roman');
ylabel('Category tag','FontSize',26,'FontName','Times New Roman');
legend({'Actual results ','Predicted results'},'FontSize',20,'Location','southeast');
grid on;
snapnow;

% ʱ�� 7.76
%  MFPT ���� 100����Ȧ 100����Ȧ 100
%  CWRU ���� 100����Ȧ 100����Ȧ 100������ 100
%  JNU  ���� 100����Ȧ 100����Ȧ 90�� ���� 100
%  XJTU cage 100����Ȧ 100�� ��Ȧ 100
