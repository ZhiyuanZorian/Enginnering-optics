clear;
R=input('�������ʰ뾶������0.855��');
N=input('����Nֵ������400��');
lamda=4893e-5;
rr=0.1;
[x,y]=meshgrid(linspace(- rr,rr,N)); %������ȡֵ
r=abs(x+i*y);
d=r.^2/rr/lamda*pi*2; %ţ�ٻ��Ĺ������
z=cos(d); z=abs(z);
Z(:,:,1)=z/sqrt(2);Z(:,:,2)=z/sqrt(2);
Z(:,:,3)=zeros(N); close all;
H=imshow(Z); %��ʾͼ��
t=0; k=1;
set(gcf,'doublebuffer','on'); %����ͼ��
title('ţ�ٻ�'); 
xlabel('�����ո���ֹͣ');
set(gca,'position',[0.161111 0.1423913 0.675194 0.715217]); %��������ϵλ��
set(gcf,'position',[254 115 427 373])
while k; %����ѭ���Ƿ����
    s=get(gcf,'currentkey');
    if strcmp(s,'space');
        clc;
        k=0;
    end
    t=t+0.1;
    pause(0.3);
    d=d+t;
    z=cos(d); z=abs(z);
    Z(:,:,1)=z/sqrt(2);Z(:,:,2)=z/sqrt(2);
    set(H,'CData',Z);
end
figure(gcf); %��ʾͼ��
    

