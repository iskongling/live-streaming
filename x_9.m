%情景4下rp的变化对均衡的影响，rp=30,40,50,60,这个是商家o,Gs=90
clc;
clear;
r0=90,r1=30,r2=70,g0=90,g1=35,g2=80,k1=10,k2=20;
set(0,'defaultfigurecolor','w')
% the 1st X,Y
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,0.5],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'ro-','linewidth',1,'markersize',4,'markerindices',points);
hold on
% plot(t,y(:,2),'ro-','linewidth',1,'markersize',5,'markerindices',points);
hold on
set(gca,'XTick',[0:0.05:0.5],'YTick',[0:0.1:1.1])
axis([0 0.5 0 1.1])
% the 2nd X,Y
r0=90,r1=40,r2=70,g0=90,g1=35,g2=80,k1=10,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,0.5],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'bv-','linewidth',1,'markersize',4,'markerindices',points);
hold on
%plot(t,y(:,2),'bo-','linewidth',1,'markersize',5,'markerindices',points);
hold on
% the 3rd X,Y
r0=90,r1=50,r2=70,g0=90,g1=35,g2=80,k1=10,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,0.5],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'kx-','linewidth',1,'markersize',4,'markerindices',points);
hold on
%plot(t,y(:,2),'ko-','linewidth',1,'markersize',5,'markerindices',points);
% the 4rd X,Y
r0=90,r1=60,r2=70,g0=90,g1=35,g2=80,k1=10,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,0.5],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'m-','linewidth',1,'markersize',4,'markerindices',points);
hold on
%plot(t,y(:,2),'mo-','linewidth',1,'markersize',5,'markerindices',points);
xlabel('{\itt}:time','interpreter','tex','Rotation',0);
ylabel('{\itx}:proportion','interpreter','tex');
%title('动态演化过程','FontWeight','bold');
legend('{\itR_p}=30','{\itR_p}=40','{\itR_p}=50','{\itR_p}=60','Location','best');
