disp('����������')
n1=input('n1=');
n2=input('n2=');
theta=0:0.1:90; %����Ƿ�Χ��0��90�ȣ����Ϊ0.1��
a= theta * pi/180;
rp=(n2*cos(a)-n1*sqrt(1-(n1/n2*sin(a)).^2))./(n2*cos(a)+n1*sqrt(1-(n1/n2*sin(a)).^2))%p�������������
rs=(n1*cos(a)-n2*sqrt(1-(n1/n2*sin(a)).^2))./(n1*cos(a)+n2*sqrt(1-(n1/n2*sin(a)).^2))%s�������������
tp=2*n1*cos(a)./(n2*cos(a)+n1*sqrt(1-(n1/n2*sin(a)).^2))%p����͸����
ts=2*n1*cos(a)./(n1*cos(a)+n2*sqrt(1-(n1/n2*sin(a)).^2))%s����͸����
figure(1)
subplot(1,2,1)
plot(theta,rp,'-',theta,rs,'--',theta,abs(rp),':',theta,abs(rs),'-.','LineWidth',2)
legend('rp','rs','tp','ts')
xlabel('�����/theta')
ylabel('���')
axis([0 90 -1 1])
grid on

