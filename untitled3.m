t =0:0.01:5;
s = tf('s');
k=4.69;
C_sys = k/(0.2*s+1);
P_sys = 100/(s^2+25*s+100);
dist_cl=feedback(P_sys,C_sys);
sys_cl=feedback(C_sys*P_sys,1);
step(dist_cl,t);
step(sys_cl,t)
stepinfo(sys_cl)