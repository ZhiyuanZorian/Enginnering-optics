%���е�ɫƽ�沨�ĺϳɷ���
%1-��̬
w1=50; w2=50;%Ƶ��
k1=5; k2=5;%����
t=0.1:1.2:1.3;%ʱ�䷶Χ
a=1;%���
x=0:0.001:5;%���������ϵĿ����
A2=a*cos(k2*x+w2*t(end));
A1=2*a*cos(k1*x-w1*t(end));
plot(x,A1,'-',x,A2,':')
xlabel('X')
ylabel('���')
title('��ɫƽ�沨ģ��')
legend('light1','light2')
set(gcf,'color',[1 1 1]);
set(gca,'xtick',[-1:0.5:1]);
set(gca,'ytick',[1,0:1:5]);



