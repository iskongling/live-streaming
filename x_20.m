%情景3下ke的变化对均衡的影响，ke=11,14,17,20,这个是商家y,gs=60
clc;
clear; 
r0=40,r1=90,r2=70,g0=60,g1=90,g2=80,k1=10,k2=11;
set(0,'defaultfigurecolor','w')
% the 1st X,Y
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
% plot(t,y(:,1),'r-','linewidth',1,'markersize',4,'markerindices',points);
plot(t,y(:,2),'ro:','linewidth',1,'markersize',5,'markerindices',points);
% grid on
hold on
set(gca,'XTick',[0:0.25:1],'YTick',[0:0.1:1.1])
axis([0 1 0 1.1])
% the 2nd X,Y
r0=40,r1=90,r2=70,g0=60,g1=90,g2=80,k1=10,k2=14;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
%plot(t,y(:,1),'b-','linewidth',1,'markersize',4,'markerindices',points);
plot(t,y(:,2),'bv:','linewidth',1,'markersize',5,'markerindices',points);
% the 3rd X,Y
r0=40,r1=90,r2=70,g0=60,g1=90,g2=80,k1=10,k2=17;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
%plot(t,y(:,1),'k-','linewidth',1,'markersize',4,'markerindices',points);
plot(t,y(:,2),'kx:','linewidth',1,'markersize',5,'markerindices',points);
% the 4nd X,Y
r0=40,r1=90,r2=70,g0=60,g1=90,g2=80,k1=10,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
%plot(t,y(:,1),'m-','linewidth',1,'markersize',4,'markerindices',points);
plot(t,y(:,2),'m:','linewidth',1,'markersize',5,'markerindices',points);
hold on
xlabel('{\itt}:time','interpreter','tex','Rotation',0);
ylabel('{\ity}:proportion','interpreter','tex');
%title('动态演化过程','FontWeight','bold');
legend('{\itK_e}=11','{\itK_e}=14','{\itK_e}=17','{\itK_e}=20','Location','best');
