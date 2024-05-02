clear
disp('nput the refractivity')
n1=input('n1=');
n2=input('n2=');
theta=0:0.2:90;
rad=theta*pi/180;
rs=(n1*cos(rad)-n2*sqrt(1-(n1/n2*sin(rad)).^2))./(n1*cos(rad)+n2*sqrt(1-(n1/n2*sin(rad)).^2));
ts=(2*n1*cos(rad))./(n1*cos(rad)+n2*sqrt(1-(n1/n2*sin(rad)).^2));
rp=(n2*cos(rad)-n1*sqrt(1-(n1/n2*sin(rad)).^2))./(n2*cos(rad)+n1*sqrt(1-(n1/n2*sin(rad)).^2));
tp=(2*n1*cos(rad))./(n2*cos(rad)+n1*sqrt(1-(n1/n2*sin(rad)).^2));
y=0*theta;
subplot(1,2,1);%����������������ͼ���
plot(theta,rs,'g',theta,ts,'b',theta,rp,'c',theta,tp,'r',theta,y,'k--');
legend('rs','ts','rp','tp');
xlabel('incident angle\theta(\circ)');
ylabel('amplitude coefficient');
title('the change of angle when refractivity increasing');
axis([0 90 -1 1]);
grid on;

%���ܵ�����
disp('input the refractivity')
n1=input('n1=');
n2=input('n2=');
%������ȫ����ʱ�Ƕ�sinֵΪ1�����Ƕȴ��ڷ���ȫ����Ƕ�ʱ��sinֵ����1��cos��ֵ����ָ�ֵ������ĽǶ�Ҳ���и�����������realȡʵ��
rs=(n1*cos(rad)-n2*real(sqrt(1-(n1/n2*sin(rad)).^2)))./(n1*cos(rad)+n2*real(sqrt(1-(n1/n2*sin(rad)).^2)));
ts=(2*n1*cos(rad))./(n1*cos(rad)+n2*real(sqrt(1-(n1/n2*sin(rad)).^2)));
rp=(n2*cos(rad)-n1*real(sqrt(1-(n1/n2*sin(rad)).^2)))./(n2*cos(rad)+n1*real(sqrt(1-(n1/n2*sin(rad)).^2)));
tp=(2*n1*cos(rad))./(n2*cos(rad)+n1*real(sqrt(1-(n1/n2*sin(rad)).^2)));

subplot(1,2,2);
plot(theta,rs,'g',theta,ts,'b',theta,rp,'c',theta,tp,'r');
legend('rs','ts','rp','tp');
xlabel('incident angle\theta(\circ)');
ylabel('amplitude coefficient');
title('the change of angle when refractivity decreasing');
axis([0 90 -1 3.5]);
grid on;