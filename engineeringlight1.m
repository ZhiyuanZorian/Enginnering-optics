disp('折射率输入')
n1=input('n1=');
n2=input('n2=');
theta=0:0.1:90; %入射角范围从0到90度，间隔为0.1度
a= theta * pi/180;
rp=(n2*cos(a)-n1*sqrt(1-(n1/n2*sin(a)).^2))./(n2*cos(a)+n1*sqrt(1-(n1/n2*sin(a)).^2))%p分量振幅反射率
rs=(n1*cos(a)-n2*sqrt(1-(n1/n2*sin(a)).^2))./(n1*cos(a)+n2*sqrt(1-(n1/n2*sin(a)).^2))%s分量振幅反射率
tp=2*n1*cos(a)./(n2*cos(a)+n1*sqrt(1-(n1/n2*sin(a)).^2))%p分量透射率
ts=2*n1*cos(a)./(n1*cos(a)+n2*sqrt(1-(n1/n2*sin(a)).^2))%s分量透射率
figure(1)
subplot(1,2,1)
plot(theta,rp,'-',theta,rs,'--',theta,abs(rp),':',theta,abs(rs),'-.','LineWidth',2)
legend('rp','rs','tp','ts')
xlabel('入射角/theta')
ylabel('振幅')
axis([0 90 -1 1])
grid on

