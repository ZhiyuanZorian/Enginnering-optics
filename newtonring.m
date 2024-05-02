clear;
R=input('输入曲率半径，建议0.855：');
N=input('输入N值，建议400：');
lamda=4893e-5;
rr=0.1;
[x,y]=meshgrid(linspace(- rr,rr,N)); %坐标轴取值
r=abs(x+i*y);
d=r.^2/rr/lamda*pi*2; %牛顿环的光斑能量
z=cos(d); z=abs(z);
Z(:,:,1)=z/sqrt(2);Z(:,:,2)=z/sqrt(2);
Z(:,:,3)=zeros(N); close all;
H=imshow(Z); %显示图形
t=0; k=1;
set(gcf,'doublebuffer','on'); %设置图形
title('牛顿环'); 
xlabel('单机空格以停止');
set(gca,'position',[0.161111 0.1423913 0.675194 0.715217]); %设置坐标系位置
set(gcf,'position',[254 115 427 373])
while k; %控制循环是否继续
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
figure(gcf); %显示图形
    

