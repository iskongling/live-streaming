function dydt=twopinzuan(t,y,r0,r1,r2,g0,g1,g2,k1,k2)
dydt=zeros(2,1)
dydt(1)=y(1)*(1-y(1))*(-k1+k2+r1-r2+y(2)*(r0-r1))
dydt(2)=y(2)*(1-y(2))*(-g2-k1+k2+g1+y(1)*(g0-g1))
end