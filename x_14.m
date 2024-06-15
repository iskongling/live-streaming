%情景4下ge的变化对均衡的影响，ge=70,80,90,100,这个是商家o,Gs=100
clc;
clear;
r0=90,r1=40,r2=70,g0=100;g1=35,g2=70,k1=10,k2=20;
set(0,'defaultfigurecolor','w')
% the 1st X,Y
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
%plot(t,y(:,1),'ro:','linewidth',1,'markersize',4,'markerindices',points);
plot(t,y(:,2),'ro:','linewidth',1,'markersize',5,'markerindices',points);
hold on
set(gca,'XTick',[0:0.25:1],'YTick',[0:0.1:1.1])
axis([0 1 0 1.1])
% the 2nd X,Y
r0=90,r1=40,r2=70,g0=100,g1=35,g2=80,k1=10,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
%plot(t,y(:,1),'bx:','linewidth',1,'markersize',4,'markerindices',points);
plot(t,y(:,2),'bv:','linewidth',1,'markersize',5,'markerindices',points);
hold on
% the 3rd X,Y
r0=90,r1=40,r2=70,g0=100,g1=35,g2=90,k1=10,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
%plot(t,y(:,1),'kv:','linewidth',1,'markersize',4,'markerindices',points);
plot(t,y(:,2),'kx:','linewidth',1,'markersize',5,'markerindices',points);
hold on
% the 4d X,Y
r0=90,r1=40,r2=70,g0=100,g1=35,g2=100,k1=10,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
%plot(t,y(:,1),'m:','linewidth',1,'markersize',4,'markerindices',points);
plot(t,y(:,2),'m:','linewidth',1,'markersize',5,'markerindices',points);
hold on
xlabel('{\itt}:time','interpreter','tex','Rotation',0);
ylabel('{\ity}:proportion','interpreter','tex');
%title('动态演化过程','FontWeight','bold');
legend('{\itG_e}=70','{\itG_e}=80','{\itG_e}=90','{\itG_e}=100','Location','best');
