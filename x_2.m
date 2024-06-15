clc;
clear;  %% 情景4,gs的变化
r0=90,r1=40,r2=70,g0=80,g1=35,g2=80,k1=10,k2=20;
set(0,'defaultfigurecolor','w')
% the 1st X,Y
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,0.5],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'r','linewidth',1,'markersize',4,'markerindices',points);
hold on
plot(t,y(:,2),'ro-','linewidth',1,'markersize',5,'markerindices',points);
hold on
set(gca,'XTick',[0:0.05:0.5],'YTick',[0:0.1:1.1])
axis([0 0.5 0 1.1])
% the 3rd X,Y
r0=90,r1=40,r2=70,g0=100,g1=35,g2=80,k1=10,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,0.5],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'kx-','linewidth',1,'markersize',4,'markerindices',points);
hold on
plot(t,y(:,2),'kv-','linewidth',1,'markersize',5,'markerindices',points);
hold on
xlabel('{\itt}:time','interpreter','tex','Rotation',0);
ylabel('{\itx/y}:proportion','interpreter','tex');
%title('动态演化过程','FontWeight','bold');
legend('O:{\itG_s}=80','Y:{\itG_s}=80','O:{\itG_s}=100','Y:{\itG_s}=100','Location','best');
