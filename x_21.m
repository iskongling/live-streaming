%情景4下ke的变化对均衡的影响，ke=11,15,19,23,这个是商家y,gs=100
clc;
clear;
r0=90,r1=40,r2=70,g0=100,g1=35,g2=80,k1=10,k2=11;
set(0,'defaultfigurecolor','w')
% the 1st X,Y
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'ro-','linewidth',1,'markersize',4,'markerindices',points);
hold on
%plot(t,y(:,2),'ro-','linewidth',1,'markersize',5,'markerindices',points);
hold on
set(gca,'XTick',[0:0.25:1],'YTick',[0:0.1:1.1])
axis([0 1 0 1.1])
% the 2nd X,Y
r0=90,r1=40,r2=70,g0=100,g1=35,g2=80,k1=10,k2=15;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'bv-','linewidth',1,'markersize',4,'markerindices',points);
hold on
%plot(t,y(:,2),'bo-','linewidth',1,'markersize',5,'markerindices',points);
hold on
% the 3rd X,Y
r0=90,r1=40,r2=70,g0=100,g1=35,g2=80,k1=10,k2=19;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'kx-','linewidth',1,'markersize',4,'markerindices',points);
hold on
%plot(t,y(:,2),'mo-','linewidth',1,'markersize',5,'markerindices',points);
hold on
% the 4d X,Y
r0=90,r1=40,r2=70,g0=100,g1=35,g2=80,k1=10,k2=23;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'m-','linewidth',1,'markersize',4,'markerindices',points);
hold on
%plot(t,y(:,2),'ko-','linewidth',1,'markersize',5,'markerindices',points);
hold on
xlabel('{\itt}:time','interpreter','tex','Rotation',0);
ylabel('{\itx}:proportion','interpreter','tex');
%title('动态演化过程','FontWeight','bold');
legend('{\itK_e}=11','{\itK_e}=15','{\itK_e}=19','{\itK_e}=23','Location','best');
