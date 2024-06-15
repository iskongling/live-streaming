%情景3下Gs对均衡解的影响,Gs=40,50,60,70，这个是商家o的变化
clc;
clear;
r0=10,r1=90,r2=70,g0=40,g1=90,g2=80,k1=10,k2=20;
set(0,'defaultfigurecolor','w')
% the 1st X,Y
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,0.5],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'ro-','linewidth',1,'markersize',4,'markerindices',points);
hold on
%plot(t,y(:,2),'ro-','linewidth',1,'markersize',5,'markerindices',points);
% hold on
set(gca,'XTick',[0:0.05:0.5],'YTick',[0:0.1:1.1])
axis([0 0.5 0 1.1])
% the 2nd X,Y
r0=15,r1=90,r2=70,g0=40,g1=90,g2=80,k1=10,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,0.5],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'bv-','linewidth',1,'markersize',4,'markerindices',points);
hold on
%plot(t,y(:,2),'bo-.','linewidth',1,'markersize',5,'markerindices',points);
%hold on
% the 3rd X,Y
r0=20,r1=90,r2=70,g0=40,g1=90,g2=80,k1=10,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,0.5],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'kx-','linewidth',1,'markersize',4,'markerindices',points);
hold on
%plot(t,y(:,2),'ko-.','linewidth',1,'markersize',5,'markerindices',points);
%hold on
% the 4nd X,Y
r0=25,r1=90,r2=70,g0=40,g1=90,g2=80,k1=10,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,0.5],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'m-','linewidth',1,'markersize',4,'markerindices',points);
hold on
%plot(t,y(:,2),'mo-','linewidth',1,'markersize',5,'markerindices',points);
%hold on
xlabel('{\itt}:time','interpreter','tex','Rotation',0);
ylabel('{\itx}:proportion ','interpreter','tex');
% title('dynamic evolutionary process','FontWeight','bold');
legend('{\itG_s}=40','{\itG_s}=50','{\itG_s}=60','{\itG_s}=70','location','best');