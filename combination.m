%两列单色平面波的合成仿真
%1-静态
w1=50; w2=50;%频率
k1=5; k2=5;%波数
t=0.1:1.2:1.3;%时间范围
a=1;%振幅
x=0:0.001:5;%传播方向上的考察点
A2=a*cos(k2*x+w2*t(end));
A1=2*a*cos(k1*x-w1*t(end));
plot(x,A1,'-',x,A2,':')
xlabel('X')
ylabel('振幅')
title('单色平面波模拟')
legend('light1','light2')
set(gcf,'color',[1 1 1]);
set(gca,'xtick',[-1:0.5:1]);
set(gca,'ytick',[1,0:1:5]);



