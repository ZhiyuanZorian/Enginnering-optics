clear;
lambda=input('wavelength(nm)£º');
lambda= lambda*(1e-9);
d=input('width of slim(mm)');
d=d*0.001;
z=input('distance to screen(m)£º');
ymax=5*lambda*z/d;
xs=ymax;
ny=101;
ys=linspace(-ymax,ymax,ny);
for i=1:ny
    L1=sqrt((ys(i)-d/2).^2+z^2);
     L2=sqrt((ys(i)+d/2).^2+z^2);
     n1=11;
     dL=linspace(-0.1,0.1,n1);
     lambda1=lambda*(1+dL');
     phi=2*pi*(L2-L1)./lambda1;
     b(i,:)=sum(4*cos(phi/2).^2)/n1;
end
nclevels=255;
br=(b/4.0)*nclevels;
subplot(1,2,1);
image(xs,ys,br);
subplot(1,2,2);
plot(b(:),ys);
colormap(gray(nclevels));
set(gcf,'color','w');
