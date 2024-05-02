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
subplot(1,2,1);%创建坐标区，对子图编号
plot(theta,rs,'g',theta,ts,'b',theta,rp,'c',theta,tp,'r',theta,y,'k--');
legend('rs','ts','rp','tp');
xlabel('incident angle\theta(\circ)');
ylabel('amplitude coefficient');
title('the change of angle when refractivity increasing');
axis([0 90 -1 1]);
grid on;

%光密到光疏
disp('input the refractivity')
n1=input('n1=');
n2=input('n2=');
%当发生全发射时角度sin值为1，当角度大于发生全反射角度时，sin值大于1，cos的值会出现负值，算出的角度也会有复数，所以用real取实部
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