%�龰3��kp�ı仯�Ծ����Ӱ�죬kp=7,11,15,19,������̼�o,rp=100,gs=65
clc;
clear; 
r0=40,r1=100,r2=70,g0=65,g1=90,g2=80,k1=7,k2=20;
set(0,'defaultfigurecolor','w')
% the 1st X,Y
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'ro-','linewidth',1,'markersize',4,'markerindices',points);
%plot(t,y(:,2),'ro-','linewidth',1,'markersize',5,'markerindices',points);
hold on
set(gca,'XTick',[0:0.25:1],'YTick',[0:0.1:1.1])
axis([0 1 0 1.1])
% the 2nd X,Y
r0=40,r1=100,r2=70,g0=65,g1=90,g2=80,k1=11,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'bv-','linewidth',1,'markersize',4,'markerindices',points);
%plot(t,y(:,2),'bv-','linewidth',1,'markersize',5,'markerindices',points);
hold on
% the 3rd X,Y
r0=40,r1=100,r2=70,g0=65,g1=90,g2=80,k1=15,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'kx-','linewidth',1,'markersize',4,'markerindices',points);
%plot(t,y(:,2),'kx-','linewidth',1,'markersize',5,'markerindices',points);
hold on
% the 4nd X,Y
r0=40,r=100,r2=70,g0=65,g1=90,g2=80,k=19,k2=20;
[t,y]=ode45(@(t,y)twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2),[0,1],[0.5,0.5]);
points=1:1:length(t);
figure(2)
plot(t,y(:,1),'m-','linewidth',1,'markersize',4,'markerindices',points);
%plot(t,y(:,2),'m-','linewidth',1,'markersize',5,'markerindices',points);
hold on
xlabel('{\itt}:time','interpreter','tex','Rotation',0);
ylabel('{\itx}:proportion','interpreter','tex');
%title('��̬�ݻ�����','FontWeight','bold');
legend('{\itK_p}=7','{\itK_p}=11','{\itK_p}=15','{\itK_p}=19','Location','best');
